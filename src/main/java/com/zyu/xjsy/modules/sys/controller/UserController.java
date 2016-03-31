package com.zyu.xjsy.modules.sys.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.info.service.BusinessService;
import com.zyu.xjsy.modules.info.entity.Business;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.service.SystemService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by travy on 2016/3/27.
 */
@RequestMapping(value = "/sys/user")
@Controller
public class UserController extends BaseController {

    private ExecuteResult executeResult = new ExecuteResult();

    @Autowired
    private SystemService systemService;

    @Autowired
    private BusinessService businessService;


    @RequestMapping(value = "")
    public String userIndex(){
        return "/modules/sys/sysUser";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public String getUserList(Model model, User user, HttpServletRequest request, HttpServletResponse response){

        List<User> userList  = new ArrayList<User>();

        PageInfo<User> pageInfo = systemService.findAllUser(new PageInfo<User>(request,response),user);


        model.addAttribute("userList",userList);

        Gson gson = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd HH:mm:ss")
                .create();
        return gson.toJson(pageInfo);
    }

    /**
     * 用户编辑页
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/edit/{id}")
    public String editForm(@PathVariable String id, Model model){
        User user = new User(id);
        user = systemService.getUser(user);
        model.addAttribute("user",user);
        List<Business> businessList = Lists.newArrayList();
        businessList = businessService.findAllBusiness(new Business());

        List<Role> roleList = Lists.newArrayList();
        roleList = systemService.findAllRole(new Role());

        model.addAttribute("businessList",businessList);

        model.addAttribute("roleList",roleList);
        return "/modules/sys/editUser";
    }

    @RequestMapping(value = "/add")
    public String addForm(Model model){
        List<Business> businessList = Lists.newArrayList();
        businessList = businessService.findAllBusiness(new Business());

        List<Role> roleList = Lists.newArrayList();
        roleList = systemService.findAllRole(new Role());

        model.addAttribute("businessList",businessList);

        model.addAttribute("roleList",roleList);
        return "/modules/sys/addUser";


    }

    /**
     * 保存用户信息
     * @param user
     * @param request
     * @param response
     * @param model
     * @return
     */
    @RequestMapping(value = "/save" ,method = RequestMethod.POST)
    @ResponseBody
    public Object save(User user, HttpServletRequest request, HttpServletResponse response, Model model){

        // 如果新密码为空，则不更换密码
        if (StringUtils.isNotBlank(user.getNewPassword())) {
            user.setPassword(SystemService.entryptPassword(user.getNewPassword()));
        }
        if(!beanValidator(model,user)){
            return executeResult.jsonReturn(300,"数据格式有误",false);
        }
        if (!"true".equals(checkLoginName(user.getLoginName()))){
            return executeResult.jsonReturn(300,"保存用户'" + user.getLoginName() + "'失败，登录名已存在",false);
        }

        //无法验证有效性
        List<Role> roles = Lists.newArrayList();
        for (Role role : systemService.findAllRole(new Role())){
            if (role.getId().equals(request.getParameter("role.id"))){

                roles.add(role);
            }
        }
        user.setRoleList(roles);
        // 保存用户信息
        systemService.saveUser(user);
        return executeResult.jsonReturn(200,"保存用户'" + user.getLoginName() + "'成功");
    }


    @RequestMapping(value = "/del" ,method = RequestMethod.POST)
    @ResponseBody
    public Object del(String id){

        systemService.delUser(new User(id));

        return executeResult.jsonReturn(200,"删除成功");
    }

    @ResponseBody
    @RequestMapping(value = "/checkLoginName")
    public String checkLoginName(String loginName) {
        if (loginName != null && (systemService.getUserByLoginName(loginName)==null || systemService.getUserByLoginName(loginName).getLoginName().equals(loginName))){
            return "true";
        }
        return "false";
    }


}
