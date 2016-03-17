package com.zyu.xjsy.modules.sys.controller;

import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by travy on 2016/3/6.
 */
@RequestMapping(value = "/sys")
@Controller
public class SystemController extends BaseController {

    @Autowired
    private SystemService systemService;


    @RequestMapping(value = "/menu/list")
    public String getMenuList(Model model){

        List<Menu> menuList = new ArrayList<Menu>();
        menuList = systemService.findAllMenu();

        model.addAttribute("menuList",menuList);
        return "/modules/sys/sysMenu";
    }

    @RequestMapping(value = "/user/list")
    public String getUserList(Model model){

        List<User> userList  = new ArrayList<User>();

        userList = systemService.findAllUser(new User());

        model.addAttribute("userList",userList);

        return "/modules/sys/sysUser";
    }
}
