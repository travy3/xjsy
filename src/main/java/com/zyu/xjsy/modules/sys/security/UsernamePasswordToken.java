package com.zyu.xjsy.modules.sys.security;

/**
 * Created by travy on 2016/3/3.
 */
public class UsernamePasswordToken extends org.apache.shiro.authc.UsernamePasswordToken {

    private String captcha;

    public UsernamePasswordToken(String username, String password,
                                 boolean rememberMe, String host, String captcha){

        super(username,password,rememberMe,host);
        this.captcha  = captcha;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }
}
