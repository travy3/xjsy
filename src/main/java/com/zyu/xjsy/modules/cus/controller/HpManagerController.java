package com.zyu.xjsy.modules.cus.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.util.JsonUtils;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import com.zyu.xjsy.modules.cus.service.CustomerService;
import com.zyu.xjsy.modules.cus.service.HpManagerService;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.info.service.PlanService;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by chenjie on 2016/5/6.
 */
@RequestMapping(value = "/hpManager")
@Controller
public class HpManagerController extends BaseController {


    @Autowired
    private HpManagerService hpManagerService;


    @Autowired
    private CustomerService customerService;

    @Autowired
    private PlanService planService;




    @ResponseBody
    @RequestMapping(value = "/list")
    public String hpManagerList(String cid, HttpServletRequest request, HttpServletResponse response){

        List<HpManager> hpManagerList = Lists.newArrayList();


        HpManager hpManager = new HpManager();

        hpManager.setCustomer(new Customer(cid));

        PageInfo<HpManager> pageInfo = hpManagerService.findByCid(new PageInfo<HpManager>(request,response),hpManager);


        Gson gson = JsonUtils.getGsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();

        return gson.toJson(pageInfo);

    }

    @RequestMapping(value = "/manage")
    @ResponseBody
    public Object manageEdit(String json,String cid){

        String jsonTmp = StringEscapeUtils.unescapeHtml4(json).replace("[","").replace("]","");

        logger.debug(jsonTmp);

        Gson gson = JsonUtils.getGsonBuilder().create();

        HpManager hpManager = gson.fromJson(jsonTmp,HpManager.class);

        hpManagerService.saveHpManager(hpManager);

        if (hpManager.getNo()==30){
//                次数到达30，说明一个方案已经完毕，自动开始下一期方案

            Plan plan = hpManager.getPlan();

            Plan nextPlan = new Plan();

            nextPlan.setLevelNo(plan.getLevelNo());

            nextPlan.setOrderNo(nextPlan.getOrderNo()+1);

            nextPlan = planService.getPlanByType(nextPlan);

            if (nextPlan == null){
                return executeResult.jsonReturn(300,"后续方案缺失");
            }

            PlanInfo planInfo = new PlanInfo();

            planInfo.setPlan(nextPlan);

            Customer customer = new Customer(cid);

            //添加带有方案的治疗纪录
            customerService.creatCusHpManage(customer,nextPlan,planInfo);

            return executeResult.jsonReturn(200,"保存成功,进入下级方案阶段");
        }

        return executeResult.jsonReturn(200,"保存成功");

    }


}
