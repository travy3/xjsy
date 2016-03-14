package com.zyu.xjsy.modules.sys.controller;

import com.zyu.xjsy.common.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by travy on 2016/2/17.
 */
@Controller
public class LoginController extends BaseController {

    @RequestMapping(value = "/a")
    public String index(){
        return "/modules/sys/sysIndex";
    }

    @RequestMapping(value = "/login")
    public String login(){

        return "/modules/sys/sysLogin";
    }
}
