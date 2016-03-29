package com.zyu.xjsy.modules.sys.security;

import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by chenjie on 2016/3/3.
 */
public class FormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter {

    private static final String DEFAULT_CAPTCHA_PARAM = "validateCode";

    @Override
    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {

        String name = getUsername(request);
        String password = getPassword(request);
        boolean remeberMe = isRememberMe(request);


        String captcha = getCaptcha(request);

        String host = UserUtils.getRemtoAddr((HttpServletRequest) request);

        return new  UsernamePasswordToken(name,password,remeberMe,host,captcha);
    }


    private String getCaptcha(ServletRequest request) {
        return WebUtils.getCleanParam(request,DEFAULT_CAPTCHA_PARAM);
    }
}
