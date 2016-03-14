package com.zyu.xjsy.modules.sys.controller;

import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by travy on 2016/2/17.
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    private SystemService systemService;

    @RequestMapping(value = "/a")
    public String index(Model model){

        List<Menu> menuList = new ArrayList<Menu>();
        menuList = systemService.findAllMenu();

        model.addAttribute("menuList",menuList);
//        return "/modules/sys/sysMenu";

        return "/modules/sys/sysIndex";
    }

    @RequestMapping(value = "/login")
    public String login(){

        return "/modules/sys/sysLogin";
    }
}
