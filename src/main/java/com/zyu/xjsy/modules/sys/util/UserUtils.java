package com.zyu.xjsy.modules.sys.util;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.common.util.CacheUtils;
import com.zyu.xjsy.modules.info.dao.BusinessDao;
import com.zyu.xjsy.modules.info.entity.Business;
import com.zyu.xjsy.modules.sys.dao.MenuDao;
import com.zyu.xjsy.modules.sys.dao.RoleDao;
import com.zyu.xjsy.modules.sys.dao.UserDao;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.security.SystemAuthorizingRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static org.apache.commons.lang3.StringUtils.isNotBlank;

/**
 * Created by chenjie on 2016/3/3.
 */
public class UserUtils {

    private static UserDao userDao = SpringContextHolder.getBean(UserDao.class);
    private static RoleDao roleDao = SpringContextHolder.getBean(RoleDao.class);
    private static MenuDao menuDao = SpringContextHolder.getBean(MenuDao.class);
    private static BusinessDao businessDao = SpringContextHolder.getBean(BusinessDao.class);

    public static final String USER_CACHE = "userCache";
    public static final String USER_CACHE_ID_ = "id_";
    public static final String USER_CACHE_LOGIN_NAME_ = "ln";

    public static final String CACHE_ROLE_LIST = "roleList";
    public static final String CACHE_MENU_LIST = "menuList";
    public static final String CACHE_BUSINESS = "business";

    /**
     * 获得用户远程地址
     */
    public static String getRemtoAddr(HttpServletRequest request){
        String remoteAddr = request.getHeader("X-Real-IP");
        if (isNotBlank(remoteAddr)) {
            remoteAddr = request.getHeader("X-Forwarded-For");
        }else if (isNotBlank(remoteAddr)) {
            remoteAddr = request.getHeader("Proxy-Client-IP");
        }else if (isNotBlank(remoteAddr)) {
            remoteAddr = request.getHeader("WL-Proxy-Client-IP");
        }
        return remoteAddr != null ? remoteAddr : request.getRemoteAddr();
    }




    /**
     * 根据登录名获取用户
     * @param loginName
     * @return 取不到返回null
     */
    public static User getByLoginName(String loginName) {
        User user = (User) CacheUtils.get(USER_CACHE, USER_CACHE_LOGIN_NAME_+loginName);
        if(user==null){
            user  = userDao.getByLoginName(new User(null,loginName));
            if (user == null){
                return null;
            }
            CacheUtils.put(USER_CACHE, USER_CACHE_ID_ + user.getId(), user);
            CacheUtils.put(USER_CACHE, USER_CACHE_LOGIN_NAME_ + user.getLoginName(), user);
        }
        return user;

    }

    /**
     * 获取当前用户
     * @return 取不到返回 new User()
     */
    public static User getUser(){
        SystemAuthorizingRealm.Principal principal = getPrincipal();
        if (principal!=null){
            User user = get(principal.getId());
            if (user != null){
                return user;
            }
            return new User();
        }
        // 如果没有登录，则返回实例化空的User对象。
        return new User();
    }

    /**
     * 根据ID获取用户
     * @param id
     * @return 取不到返回null
     */
    public static User get(String id){
        User user = (User)CacheUtils.get(USER_CACHE, USER_CACHE_ID_ + id);
        if (user ==  null){
            /**
             * 已经取出来对应roleList
             */
            user = userDao.get(id);
            if (user == null){
                return null;
            }
//            user.setRoleList(roleDao.findList(new Role(user)));
            CacheUtils.put(USER_CACHE, USER_CACHE_ID_ + user.getId(), user);
            CacheUtils.put(USER_CACHE, USER_CACHE_LOGIN_NAME_ + user.getLoginName(), user);
        }
        return user;
    }



    public static Session getSession(){
        try{
            Subject subject = SecurityUtils.getSubject();
            Session session = subject.getSession(false);
            if (session == null){
                session = subject.getSession();
            }
            if (session != null){
                return session;
            }
//			subject.logout();
        }catch (InvalidSessionException e){

        }
        return null;
    }

    /**
     * 获取授权主要对象
     */
    public static Subject getSubject(){
        return SecurityUtils.getSubject();
    }

    /**
     * 获取当前登录者对象
     */
    public static SystemAuthorizingRealm.Principal getPrincipal(){
        try{
            Subject subject = SecurityUtils.getSubject();
            SystemAuthorizingRealm.Principal principal = (SystemAuthorizingRealm.Principal)subject.getPrincipal();
            if (principal != null){
                return principal;
            }
        }catch (UnavailableSecurityManagerException e) {

        }catch (InvalidSessionException e){

        }
        return null;
    }

    /**
     * 获取当前用户授权菜单
     * @return
     */
    public static List<Menu> getMenuList() {
//        List<Menu> menuList = (List<Menu>) getCache(CACHE_MENU_LIST);
//        //TODO
//        if(menuList == null){
        List<Menu> menuList = Lists.newArrayList();
            User user = getUser();
            if (user.isAdmin()){
                menuList = menuDao.findAllList(new Menu());
            }else {
                menuList = menuDao.findByUser(user==null?new User():user);
            }
//            putCache(CACHE_MENU_LIST,menuList);
//        }
        return menuList;
    }

    public static List<Role> getRoleList(){
        List<Role> roleList = (List<Role>) CacheUtils.get(CACHE_ROLE_LIST);
        if (roleList == null){
            User user = getUser();
            if (user.isAdmin()){
                roleList = roleDao.findAllList(new Role());
            }else {
                //todo 获取当前用户的角色
                Role role = new Role();
                role.getSqlMap().put("dsf", BaseService.dataScopeFilter(getUser()));
                roleList = roleDao.findList(role);
            }
        }
        return roleList;
    }

    /**
     * 获取当前用户的加盟商信息
     * @return
     */
    public static Business getBusiness(){
        Business business = (Business) getCache(CACHE_BUSINESS);
        if (business == null){
            business = businessDao.getByUser(getUser());
        }
        putCache(CACHE_BUSINESS,business);
        return business;
    }

    //user cache session

    public static Object getCache(String key){
        Object obj = getSession().getAttribute(key);
        return obj==null?null:obj;
    }

    public static void putCache(String key, Object value){
        getSession().setAttribute(key,value);
    }

    public static void removeCache(String key){
        getSession().removeAttribute(key);
    }


    /**
     * 清除当前用户缓存
     */
    public static void clearCache(){
        removeCache(CACHE_ROLE_LIST);
        removeCache(CACHE_MENU_LIST);
        UserUtils.clearCache(getUser());
    }

    /**
     * 清除指定用户缓存
     * @param user
     */
    public static void clearCache(User user){
        CacheUtils.remove(USER_CACHE, USER_CACHE_ID_ + user.getId());
        CacheUtils.remove(USER_CACHE, USER_CACHE_LOGIN_NAME_ + user.getLoginName());
    }


}
