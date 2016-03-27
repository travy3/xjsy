package com.zyu.xjsy.modules.sys.util;

import com.zyu.xjsy.modules.sys.dao.UserDao;
import com.zyu.xjsy.modules.sys.entity.User;

import javax.servlet.http.HttpServletRequest;

import static org.apache.commons.lang3.StringUtils.isNotBlank;

/**
 * Created by chenjie on 2016/3/3.
 */
public class UserUtils {

    private static UserDao userDao = SpringContextHolder.getBean(UserDao.class);

    public static final String USER_CACHE = "userCache";
    public static final String USER_CACHE_ID_ = "id_";
    public static final String USER_CACHE_LOGIN_NAME_ = "ln";

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
        User user = (User)CacheUtils.get(USER_CACHE, USER_CACHE_LOGIN_NAME_+loginName);
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
}
