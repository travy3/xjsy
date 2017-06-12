package com.zyu.xjsy.modules.info.controller;

import com.google.common.collect.Lists;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.util.JsonUtils;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.info.service.PlanService;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@RequestMapping(value = "${adminPath}/info")
@Controller
public class PlanController extends BaseController {

    @Autowired
    private PlanService planService;

    @RequestMapping(value = "/plan")
    public String planIndex(Model model) {
        return "/modules/info/plan";
    }

    @RequestMapping(value = "/plan/list")
    @ResponseBody
    public String PlanList(Model model, HttpServletRequest request, HttpServletResponse response, Plan plan) {

        PageInfo<Plan> pageInfo = planService.findAllPlan(new PageInfo(request, response), plan);

        return JsonUtils.getGson().toJson(pageInfo);
    }

    @RequestMapping(value = "/plan/form")
    public String planForm(String id, Model model) {

        if (StringUtils.isNotBlank(id)) {
            //todo 编辑时获取当前方案
            Plan plan = new Plan(id);

//
            List<Plan> list = planService.getPlan2(plan);
//
            model.addAttribute("plan", list.get(0));
        }
        return "/modules/info/planForm";
    }

    @RequestMapping(value = "/checkOrderNoisRight")
    @ResponseBody
    public String checkOrderNoisRight(@RequestParam("orderNo") String orderNo, @RequestParam("levelNo") String levelNo, @RequestParam("eyeType") String eyeType) {
        String result = Global.FALSE;
        if (StringUtils.isNoneBlank(orderNo) && StringUtils.isNoneBlank(levelNo) && StringUtils.isNoneBlank(eyeType)) {
            result = planService.checkOrderNoisRight(orderNo, levelNo, eyeType);
        }
        return JsonUtils.getGson().toJson(result);
    }


    @RequestMapping(value = "/planInfo/list")
    @ResponseBody
    public String PlanInfoList(String planId, HttpServletRequest request, HttpServletResponse response, Model model) {

        PageInfo<PlanInfo> pageInfo = new PageInfo<PlanInfo>();

        if (StringUtils.isNotBlank(planId)) {
            Plan plan = new Plan(planId);
            PlanInfo planInfo = new PlanInfo();
            planInfo.setPlan(plan);
            pageInfo = planService.getPlanInfo(new PageInfo<PlanInfo>(request, response), planInfo);

        }
        return JsonUtils.getGson().toJson(pageInfo);
    }

    @RequestMapping(value = "/plan/save")
    @ResponseBody
    public Object planSave(Plan plan, Model model, String planId, String[] num, String[] code, String[] times, String[] paper) {

        List<PlanInfo> planInfos = Lists.newArrayList();

        if (num != null && num.length > 0) {
            for (int i = 0; i < num.length; i++) {
                PlanInfo planInfo = new PlanInfo();
                planInfo.setNum(Integer.valueOf(num[i]));
                planInfo.setCode(code[i]);
                planInfo.setTimes(times[i]);
                planInfo.setPaper(paper[i]);
                planInfos.add(planInfo);
            }
        }

        plan.setPlanInfoList(planInfos);

        planService.savePlan(plan);

        return executeResult.jsonReturn(200, "保存成功");
    }

    @RequestMapping(value = "/plan/del")
    @ResponseBody
    public Object planDel(String id) {

        Plan plan = new Plan(id);

        planService.delPlan(plan);

        return executeResult.jsonReturn(200, "删除成功");
    }

    @RequestMapping(value = "/planInfo/manage")
    @ResponseBody
    public Object planInfoEdit(String json, String planId) {

        String jsonTmp = StringEscapeUtils.unescapeHtml4(json).replace("[", "").replace("]", "");
        logger.debug(jsonTmp);

        GsonBuilder gsonBuilder = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() {
            @Override
            public boolean shouldSkipField(FieldAttributes fieldAttributes) {
                return fieldAttributes.getName().contains("gridNumber") | fieldAttributes.getName().contains("gridIndex");
            }

            @Override
            public boolean shouldSkipClass(Class<?> aClass) {
                return false;
            }
        });

        Gson gson = gsonBuilder.create();

        PlanInfo planInfo = gson.fromJson(jsonTmp, PlanInfo.class);

        Plan plan = new Plan(planId);

        planInfo.setPlan(plan);

        planService.savePlanInfo(planInfo);


        return executeResult.jsonReturn(200, "保存成功");
    }

    @RequestMapping(value = "/planInfo/del")
    @ResponseBody
    public Object planInfoDel(String id) {

        PlanInfo planInfo = new PlanInfo(id);

        planService.delPlanInfo(planInfo);

        return executeResult.jsonReturn(200, "删除成功");

    }

}
