package com.zyu.xjsy.modules.info.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.modules.info.service.BusinessService;
import com.zyu.xjsy.modules.info.entity.Business;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
