package com.zyu.xjsy.modules.cus.controller;

import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.zyu.xjsy.common.controller.BaseController;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.util.JsonUtils;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import com.zyu.xjsy.modules.cus.service.HpManagerService;
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
@Controller(value = "/hpManager")
public class HpManagerController extends BaseController {


    @Autowired
    private HpManagerService hpManagerService;






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

}
