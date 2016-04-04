package com.zyu.xjsy.modules.sys.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.apache.commons.lang3.StringUtils;
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

    private ExecuteResult executeResult = new ExecuteResult();

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


    @RequestMapping(value ="/role/manage" )
    public String roleForm(Model model,String id){

        if (StringUtils.isNotBlank(id)){
            Role role = new Role(id);
            role = systemService.getRole(role);
            model.addAttribute("role",role);
        }

        List<Menu> menuList = Lists.newArrayList();

        menuList = systemService.findAllMenu();

        model.addAttribute("menuList",menuList);

        return "/modules/sys/roleManager";

    }

    @RequestMapping(value = "/role/save")
    @ResponseBody
    public Object saveRole(Role role, HttpServletRequest request, HttpServletResponse response , Model model){


        if(!beanValidator(model,role)){
            return executeResult.jsonReturn(300,"数据格式有误",false);
        }

        List<Menu> menus = Lists.newArrayList();

        String menuNames = request.getParameter("menu.name");
        String[] menuNames_Array = menuNames.split(",");
        for (int i = 0 ; i<menuNames_Array.length ; i++){
            Menu menu = systemService.getMenuByName(new Menu(menuNames_Array[i]));
            if (menu !=null){
                menus.add(menu);
            }
        }
        role.setMenuList(menus);

        systemService.saveRole(role);

        return executeResult.jsonReturn(200,"保存成功");
    }

    @RequestMapping(value = "/role/del")
    @ResponseBody
    public Object delRole(String id){
        systemService.delRole(new Role(id));
        return executeResult.jsonReturn(200,"删除成功");
    }






}
