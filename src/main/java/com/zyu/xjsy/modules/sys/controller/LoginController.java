package com.zyu.xjsy.modules.sys.controller;

import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.security.FormAuthenticationFilter;
import com.zyu.xjsy.modules.sys.security.SystemAuthorizingRealm;
import com.zyu.xjsy.modules.sys.service.SystemService;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by travy on 2016/2/17.
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "${adminPath}")
    public String index(Model model){


        List<Menu> menuList = new ArrayList<Menu>();
        menuList = UserUtils.getMenuList();

        model.addAttribute("menuList",menuList);

        return "/modules/sys/sysIndex";
    }


    /**
     * 管理登录
     */
    @RequestMapping(value = "${adminPath}/login", method = RequestMethod.GET)
    public String login(){

        SystemAuthorizingRealm.Principal principal = UserUtils.getPrincipal();

        if (principal != null){
            return "redirect:"+adminPath;
        }

        return "/modules/sys/sysLogin2";
    }

    @RequestMapping(value = "${adminPath}/login",method =RequestMethod.POST)
    public String shiroLoginFailure(HttpServletRequest request, HttpServletResponse response, Model model){

        SystemAuthorizingRealm.Principal principal = UserUtils.getPrincipal();
        // 如果已经登录，则跳转到管理首页
        if(principal != null){
            return "redirect:" + adminPath;
        }

        String username = WebUtils.getCleanParam(request, FormAuthenticationFilter.DEFAULT_USERNAME_PARAM);
        String exception = (String)request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
        String message = (String)request.getAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_PARAM);

        if (StringUtils.isBlank(message) || StringUtils.equals(message, "null")){
            message = "用户或密码错误, 请重试.";
        }

        model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, username);
        model.addAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME, exception);
        model.addAttribute(FormAuthenticationFilter.DEFAULT_MESSAGE_PARAM, message);

        return "/modules/sys/sysLogin2";
    }



//    public String changepwd(){
//
//    }



}
