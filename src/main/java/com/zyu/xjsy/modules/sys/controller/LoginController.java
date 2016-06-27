package com.zyu.xjsy.modules.sys.controller;

import com.github.abel533.echarts.Toolbox;
import com.github.abel533.echarts.axis.Axis;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.json.GsonOption;
import com.github.abel533.echarts.series.Bar;
import com.github.abel533.echarts.series.Series;
import com.google.common.collect.Lists;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.service.CustomerService;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.User;
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
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by travy on 2016/2/17.
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    private SystemService systemService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = "${adminPath}")
    public String index(Model model){

        List<Menu> menuList = new ArrayList<Menu>();
        menuList = UserUtils.getMenuList();

        model.addAttribute("menuList",menuList);

        return "/modules/sys/sysIndex2";
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




    @RequestMapping(value = "${adminPath}/changePwd")
    public String changePwdForm(){

        return "/modules/sys/changePwd";
    }

    @RequestMapping(value = "${adminPath}/saveNewPwd")
    @ResponseBody
    public Object saveNewPwd(String password,String newPassword,String againNewPassword){


        if (StringUtils.isBlank(password) || StringUtils.isBlank(newPassword)){
            return executeResult.jsonReturn(300,"密码不能为空");
        }

        User user = UserUtils.getUser();

        if (systemService.validatePassword(password,user.getPassword())){
            user.setPassword(SystemService.entryptPassword(newPassword));
            user.setNewPassword(SystemService.entryptPassword(newPassword));
        }else {
            return executeResult.jsonReturn(300,"密码验证失败");
        }

        systemService.saveUser(user);

        return executeResult.jsonReturn(200,"新密码保存成功");

    }


    @RequestMapping(value = "${adminPath}/main")
    public String mainPage(Model model){
        //列表查询条件传入
//        model.addAttribute("customer",customer);
        return "/modules/sys/main";
    }

    @RequestMapping(value = "${adminPath}/noauth")
    public String getNoauth(){
        return "/modules/sys/noauth";
    }


    @RequestMapping(value = "${adminPath}/statistics/increaseCus")
    @ResponseBody
    public String statistics_increaseCus(){

        User user = UserUtils.getUser();

        GsonOption gsonOption = new GsonOption();
        Toolbox toolbox = new Toolbox();
        toolbox.show(true);
        gsonOption.tooltip(Trigger.axis).legend("客户").calculable(true);
        Axis xAxis = new CategoryAxis();
        xAxis.data("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");

        Axis yAxis = new ValueAxis();
        yAxis.splitArea().show(true);

        List<Axis> xAxisList = Lists.newArrayList();
        List<Axis> yAxisList = Lists.newArrayList();
        xAxisList.add(xAxis);
        yAxisList.add(yAxis);
        gsonOption.setxAxis(xAxisList);
        gsonOption.setyAxis(yAxisList);

        //todo echart 每月新增客户数据

        Series series  = new Bar("客户");
        /**
         *  查询新增用户
         */

        Customer customer = new Customer();
        customer.setUser(user);
        List<Map> mapList = Lists.newArrayList();
        mapList = customerService.getIncCusByMonth(customer);

        List<String> list = Lists.newArrayList();

        for (int i =1; i<=12; i++){
            list.add("0");
        }

        for (Map map : mapList){
            String month = (String) map.get("months");
            list.set(Integer.parseInt(month), map.get("COUNT").toString());
        }

        series.setData(list);

        List<Series> serieslist = Lists.newArrayList();
        serieslist.add(series);

        gsonOption.setSeries(serieslist);
        logger.info("gsonOption is {}",gsonOption.toString());

        return gsonOption.toString();

    }



}
