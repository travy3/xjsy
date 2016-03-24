package com.zyu.xjsy.modules.sys.controller;

import com.google.gson.Gson;
import com.zyu.xjsy.common.config.PageInfo;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @RequestMapping(value = "/user")
    public String userIndex(){
//        List<User> userList  = new ArrayList<User>();

//        userList = systemService.findAllUser(new User());

        return "/modules/sys/sysUser";
    }

    @RequestMapping(value = "/user/list")
    @ResponseBody
    public String getUserList(Model model, User user, HttpServletRequest request, HttpServletResponse response){

        String pageCurrent = request.getParameter("pageCurrent");

        List<User> userList  = new ArrayList<User>();

        PageInfo<User> pageInfo = systemService.findAllUser(new PageInfo<User>(request,response),user);


        model.addAttribute("userList",userList);

        Gson gson = new Gson();

        return gson.toJson(pageInfo);
    }
}
