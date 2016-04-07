package com.zyu.xjsy.modules.info.controller;

import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.info.service.PlanService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chenjie on 2016/4/5.
 */
@RequestMapping(value = "/info")
@Controller
public class PlanController extends BaseController {

    private ExecuteResult executeResult = new ExecuteResult();


    @Autowired
    private PlanService planService;

    @RequestMapping(value = "/plan")
    public String planIndex(Model model){
        return "/modules/info/plan";
    }

    @RequestMapping(value = "/plan/list")
    @ResponseBody
    public String PlanList(Model model, HttpServletRequest request, HttpServletResponse response, Plan plan){

        PageInfo<Plan> pageInfo  =  planService.findAllPlan(new PageInfo(request,response),plan);

        Gson gson = new Gson();

        return gson.toJson(pageInfo);
    }

    @RequestMapping(value = "/plan/manage")
    public String planForm(String id,Model model){

        if (StringUtils.isNotBlank(id)){
            //todo 编辑时获取当前方案
            Plan plan = new Plan(id);
            plan = planService.getPlan(plan);

            model.addAttribute("plan",plan);
        }
        return "/modules/info/planManager";
    }


    @RequestMapping(value = "/planInfo/list")
    @ResponseBody
    public String PlanInfoList(String planId,HttpServletRequest request,HttpServletResponse response,Model model){

        PageInfo<PlanInfo> pageInfo = new PageInfo<PlanInfo>();

        if (StringUtils.isNotBlank(planId)){
            Plan plan = new Plan(planId);
            PlanInfo planInfo = new PlanInfo();
            planInfo.setPlan(plan);
            pageInfo =  planService.getPlanInfo(new PageInfo<PlanInfo>(request,response) ,planInfo);

        }

        Gson gson = new Gson();

        return gson.toJson(pageInfo);
    }

    @RequestMapping(value = "/planInfo/save")
    public Object planInfoSave(PlanInfo planInfo,Model model,String planId,String[] num,String[] code,String[] times,String[] paper){

        if (StringUtils.isNotBlank(planId)){
            Plan plan = new Plan(planId);
            planInfo.setPlan(plan);
        }

       return  executeResult.jsonReturn(200,"保存成功");
    }

}
