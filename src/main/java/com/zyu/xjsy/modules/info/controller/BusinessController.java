package com.zyu.xjsy.modules.info.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.web.ExecuteResult;
import com.zyu.xjsy.modules.info.entity.Area;
import com.zyu.xjsy.modules.info.entity.Business;
import com.zyu.xjsy.modules.info.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by travy on 2016/3/30.
 */
@RequestMapping(value = "/info/business")
@Controller
public class BusinessController extends BaseController {

    private ExecuteResult executeResult = new ExecuteResult();

    @Autowired
    private BusinessService businessService;

    @RequestMapping(value = "/list")
    @ResponseBody
    public String getBusinessList(Model model, HttpServletRequest request , HttpServletResponse response, Business business){
        List<Business> businessList = Lists.newArrayList();

        PageInfo<Business> pageInfo = (PageInfo<Business>) businessService.findAllBusiness(new PageInfo<Business>(request,response),business);

        Gson gson = new Gson();

        return gson.toJson(pageInfo);
    }

    @RequestMapping(value = "")
    public String index(){

        return "/modules/info/business";
    }

    @RequestMapping(value = "/add")
    public String addForm(Model model){

        List<Area> areaList = Lists.newArrayList();

        areaList = businessService.findAllAreas(new Area());

        model.addAttribute("areaList",areaList);

        return "/modules/info/addBusiness";
    }

    @RequestMapping(value = "/edit/{id}")
    public String editForm(Model model,@PathVariable String id){

        Business business = new Business(id);

        business = businessService.getBusiness(business);

        model.addAttribute("business",business);

        List<Area> areaList = Lists.newArrayList();

        areaList = businessService.findAllAreas(new Area());

        model.addAttribute("areaList",areaList);

        return "/modules/info/addBusiness";

    }

    @RequestMapping(value = "/save")
    @ResponseBody
    public Object save(Business business,Model model){

        // 根据绑定name查找id进而真实绑定
        Area area = businessService.getAreaByName(business.getArea());

        business.setArea(area);

        if(!beanValidator(model,business)){
            return executeResult.jsonReturn(300,"数据格式有误",false);
        }
        businessService.saveBusiness(business);

        return executeResult.jsonReturn(200,"保存成功");

    }


    @RequestMapping(value = "/del",method = RequestMethod.POST)
    @ResponseBody
    public Object del(String id){
        Business business = new Business(id);

        businessService.delBusiness(business);

        return executeResult.jsonReturn(200,"删除成功");
    }





}
