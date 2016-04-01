package com.zyu.xjsy.modules.sys.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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


    @RequestMapping(value = "/role")
    public String roleIndex(){

        return "/modules/sys/sysRole";
    }

    @RequestMapping(value = "/role/list")
    @ResponseBody
    public String getRoleList(Model model){

        List<Role> roleList = Lists.newArrayList();

        roleList = systemService.findAllRole(new Role());

//        model.addAttribute("roleList",roleList);

        Gson gson = new Gson();
        return gson.toJson(roleList);

//        return "/modules/sys/sysRole";
    }






}
