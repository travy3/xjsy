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

        System.out.println("123");
        return "/modules/sys/sysIndex";
    }
}
