package com.zyu.xjsy.modules.info.controller;

import com.google.common.collect.Lists;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.info.service.PlanService;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
    @ResponseBody
    public Object planInfoSave(Model model,Plan plan,String[] num,String[] code,String[] times,String[] paper,String[] id){

        List<PlanInfo> planInfos = Lists.newArrayList();

        if (id != null && id.length >0){
            return  executeResult.jsonReturn(300,"保存失败，请先更新编辑行");
        }

        for (int i = 0 ; i<code.length ; i++){
            PlanInfo planInfo = new PlanInfo();
            planInfo.setCode(code[i]);
            planInfo.setNum(Integer.valueOf(num[i]));
            planInfo.setPaper(paper[i]);
            planInfo.setTimes(times[i]);
            planInfos.add(planInfo);
        }

        planService.savePlan(plan,planInfos);

       return  executeResult.jsonReturn(200,"保存成功");
    }

    @RequestMapping(value = "/planInfo/edit")
    @ResponseBody
    public Object planInfoEdit(String json){

        String jsonTmp = StringEscapeUtils.unescapeHtml4(json).replace("[","").replace("]","");
        logger.debug(jsonTmp);



        GsonBuilder gsonBuilder = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() {
            @Override
            public boolean shouldSkipField(FieldAttributes fieldAttributes) {
                return  fieldAttributes.getName().contains("gridNumber")|fieldAttributes.getName().contains("gridIndex");
            }

            @Override
            public boolean shouldSkipClass(Class<?> aClass) {
                return false;
            }
        });

        Gson gson = gsonBuilder.create();

//        String jsonTmp = gson.toJson(json);

        PlanInfo planInfo = gson.fromJson(jsonTmp,PlanInfo.class);

        planService.savePlanInfo(planInfo);


        return  executeResult.jsonReturn(200,"保存成功");
    }

//    public Object planInfoDelete(String planInfoId){
//
//
//
//    }

}
