package com.zyu.xjsy.modules.info.controller;

import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.service.PlanService;
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


    @Autowired
    private PlanService planService;

    @RequestMapping(value = "/plan")
    public String planIndex(Model model){
        return "/modules/info/plan";
    }

    @RequestMapping(value = "/plan/list")
    @ResponseBody
    public String getPlanList(Model model, HttpServletRequest request, HttpServletResponse response, Plan plan){

//        List<Plan> planList = Lists.newArrayList();

        PageInfo<Plan> pageInfo  =  planService.findAllPlan(new PageInfo(request,response),plan);

//        model.addAttribute("planList",planList);

        Gson gson = new Gson();

        return gson.toJson(pageInfo);
    }















}
