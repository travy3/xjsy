package com.zyu.xjsy.modules.cus.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.service.CustomerService;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.info.service.PlanService;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;

/**
 * Created by chenjie on 2016/4/13.
 */
@Controller
@RequestMapping(value = "/cus")
public class CustomerController extends BaseController {


    private ExecuteResult executeResult = new ExecuteResult();


    @Autowired
    private CustomerService customerService;

    @Autowired
    private PlanService planService;


    @RequestMapping(value = "/{duration}")
    public String cusIndex(@PathVariable String duration,Customer customer,Model model){

        if (Global.DURATION_SY.equals(duration)){
            //列表查询条件传入
            model.addAttribute("customer",customer);
            return "/modules/cus/cusIndex0";

        }else if (Global.DURATION_ZL.equals(duration)){
            //列表查询条件传入
            model.addAttribute("customer",customer);
            return "/modules/cus/cusIndex1";

        }else if (Global.DURATION_BJ.equals(duration)){

            return "/modules/cus/cusIndex2";

        }else {
            return "";
        }
    }

    @RequestMapping(value = "/{duration}/list")
    @ResponseBody
    public String list(@PathVariable String duration, HttpServletRequest request, HttpServletResponse response,Customer customer){

        User user = UserUtils.getUser();
//        Customer customer = new Customer();
        customer.setDuration(duration);
        PageInfo<Customer> pageInfo = customerService.findAllCustomer(new PageInfo<Customer>(request,response),customer,user);

        Gson gson = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd HH:mm:ss")
                .create();
        return gson.toJson(pageInfo);

    }

    @RequestMapping(value = "/{duration}/form")
    public String form(@PathVariable String duration,String id, Model model){

        if (StringUtils.isNotBlank(id)){
            //edit
            Customer customer = new Customer(id);

            customer.setUser(UserUtils.getUser());

            customer.setDuration(duration);

            customer = customerService.getCustomer(customer);

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            model.addAttribute("customer",customer);

            model.addAttribute("sdfBirthday",sdf.format(customer.getBirthday()));
        }

        return "/modules/cus/cusForm";

    }

    /**
     * insert/update
     * @param customer
     * @param model
     * @return
     */
    @RequestMapping(value = "/{duration}/manage")
    @ResponseBody
    public Object manage(Customer customer,Model model){

        User user = UserUtils.getUser();

        customer.setBusiness(user.getBusiness());
        customer.setUser(user);
        if(!beanValidator(model,customer)){
            return executeResult.jsonReturn(300,"数据格式有误",false);
        }

        customerService.saveCustomer(customer);

        return executeResult.jsonReturn(200,"客户信息保存成功!");
    }


    @RequestMapping(value = "/questionnaire")
    public String questionnaire(String id,HttpServletRequest request,HttpServletResponse response,Model model){

        model.addAttribute("customerId",id);

        return "/modules/cus/questionnaire";
    }

    /**
     * 方案推算 已定 no good
     * @param planResult
     * @param eyeType
     * @return
     */
    @RequestMapping(value = "/cusPlanResult")
    @ResponseBody
    public String cusPlanResult(String planResult,String eyeType){

        Gson gson = new Gson();
        Plan plan = new Plan();
        int planResultTmp = Integer.parseInt(planResult);
        if ("R".equals(eyeType)){
            if (planResultTmp >=25){
                plan.setId("6");
            }else if(planResultTmp >= 13 && planResultTmp <25){
                plan.setId("5");
            }else {
                plan.setId("4");
            }
        }else {
            if (planResultTmp >=23){
                plan.setId("6");
            }else if(planResultTmp >= 13 && planResultTmp <23){
                plan.setId("5");
            }else {
                plan.setId("4");
            }
        }
        plan = planService.getPlan(plan);
        return gson.toJson(plan);

    }

    @RequestMapping(value = "/saveCusPlanInfo")
    @ResponseBody
    public Object cusPlanSave(String planId,String customerId){

        if (StringUtils.isNotBlank(planId) && StringUtils.isNotBlank(customerId)){

            Plan plan = new Plan(planId);

            plan = planService.getPlan(plan);

            Customer customer =null;

            customer = customerService.getCustomerById(customerId);

            PlanInfo planInfo = new PlanInfo();

            planInfo.setPlan(plan);

            customerService.creatCusHpManage(customer,plan,planInfo);


            return executeResult.jsonReturn(200,"客户方案创建成功");
        }
        return executeResult.jsonReturn(300,"客户方案创建失败");
    }

    @RequestMapping(value = "/hpManger")
    public String cusHpManager(Model model,String id) {

        Customer customer = new Customer(id);

        customer.setDuration(Global.DURATION_ZL);

        customer.setUser(UserUtils.getUser());

        customer = customerService.getCustomer(customer);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        model.addAttribute("customer",customer);

        model.addAttribute("sdfBirthday",sdf.format(customer.getBirthday()));

        return "/modules/cus/hpManager";

    }

}
