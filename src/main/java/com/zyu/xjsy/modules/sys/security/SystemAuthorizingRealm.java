package com.zyu.xjsy.modules.sys.security;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.util.ValidateCodeServlet;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.service.SystemService;
import com.zyu.xjsy.modules.sys.util.SpringContextHolder;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.context.annotation.DependsOn;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * Created by travy on 2016/3/4.
 */
@Service
@DependsOn({ "userDao", "roleDao", "menuDao" })
public class SystemAuthorizingRealm extends AuthorizingRealm {


    private SystemService systemService;

    /**
     * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        Principal principal = (Principal) getAvailablePrincipal(principals);

        //
        if (!Global.getConfig("user.multiAccountLogin").equals("true")){
            Collection<Session> sessions = getSystemService().getSessionDao()
                    .getActiveSessions(true, principal, UserUtils.getSession());

            if(sessions.size()> 0 ){
                if(UserUtils.getSubject().isAuthenticated()){
                    for (Session session : sessions) {
                        getSystemService().getSessionDao().delete(session);
                    }
                }
                else {
                    UserUtils.getSubject().logout();
                    throw new AuthenticationException("msg:账号已在其它地方登录，请重新登录。");
                }
            }

        }
        User user = getSystemService().getUserByLoginName(
                principal.getLoginName());

        if (user!= null){
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            List<Menu> list = UserUtils.getMenuList();
            for (Menu menu : list) {
                if (StringUtils.isNotBlank(menu.getPermission())) {
                    // 添加基于Permission的权限信息
                    for (String permission : StringUtils.split(
                            menu.getPermission(), ",")) {
                        info.addStringPermission(permission);
                    }
                }
            }
            System.out
                    .println("权限 ： " + info.getStringPermissions().toString());
            // 添加用户权限
            info.addStringPermission("user");
            // 添加用户角色信息
            for (Role role : user.getRoleList()) {
                info.addRole(role.getEnname());
            }
            return info;
        }else {
            return null;
        }
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;


        //校验登陆验证码
        Session session  = UserUtils.getSession();
        String code = (String) session
                .getAttribute(ValidateCodeServlet.VALIDATE_CODE);
        if (token.getCaptcha() == null
                || !token.getCaptcha().toUpperCase().equals(code)) {
            throw new AuthenticationException("msg:验证码错误, 请重试.");
        }

        //校验用户名和密码
        if(StringUtils.isNotBlank(token.getUsername()) && StringUtils.isNotBlank(token.getPassword().toString())){
            User user = getSystemService().getUserByLoginName(token.getUsername());
            if(user != null){
                if(Global.NO.equals(user.getLoginFlag())){
                    throw new AuthenticationException("msg:该已帐号禁止登录.");
                }
                if(getSystemService().validatePassword(token.getPassword().toString(),user.getPassword())){
                    return new SimpleAuthenticationInfo(new Principal(user),token.getPassword().toString(),getName());
                }else {
                    throw new UnknownAccountException("msg:账号密码错误,请重试.");
                }
            }
        }
        return null;
    }

    /**
     * 获取系统业务对象
     */
    public SystemService getSystemService() {
        if (systemService == null) {
            systemService = SpringContextHolder.getBean(SystemService.class);
        }
        return systemService;
    }

    /**
     * 授权用户信息
     */
    public static class Principal implements Serializable {

        private static final long serialVersionUID = 1L;

        private String id; // 编号
        private String loginName; // 登录名
        private String name; // 姓名


        public Principal(User user) {
            this.id = user.getId();
            this.loginName = user.getLoginName();
            this.name = user.getName();
        }

        public String getId() {
            return id;
        }

        public String getLoginName() {
            return loginName;
        }

        public String getName() {
            return name;
        }

        /**
         * 获取SESSIONID
         */
        public String getSessionid() {
            try {
                return (String) UserUtils.getSession().getId();
            } catch (Exception e) {
                return "";
            }
        }

        @Override
        public String toString() {
            return id;
        }

    }
}
