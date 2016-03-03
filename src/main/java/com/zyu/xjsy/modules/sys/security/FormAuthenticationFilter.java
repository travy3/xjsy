package com.zyu.xjsy.modules.sys.security;

import org.apache.shiro.authc.AuthenticationToken;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by chenjie on 2016/3/3.
 */
public class FormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter {


    @Override
    protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {

        String name = getUsername(request);
        String password = getPassword(request);


        return super.createToken(request, response);
    }
}
