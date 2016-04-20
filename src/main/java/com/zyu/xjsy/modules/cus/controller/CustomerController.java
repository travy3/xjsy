package com.zyu.xjsy.modules.cus.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.service.CustomerService;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by chenjie on 2016/4/13.
 */
@Controller
@RequestMapping(value = "/cus")
public class CustomerController {



    @Autowired
    private CustomerService customerService;


    @RequestMapping(value = "/{duration}")
    public String cusIndex(@PathVariable String duration){

        if (Global.DURATION_SY.equals(duration)){
            return "/modules/cus/cusIndex1";

        }else if (Global.DURATION_ZL.equals(duration)){

            return "/modules/cus/cusIndex2";
        }else if (Global.DURATION_BJ.equals(duration)){

            return "/modules/cus/cusIndex3";
        }else {
            return "";
        }
    }

    @RequestMapping(value = "/{duration}/list")
    @ResponseBody
    public String list(@PathVariable String duration, HttpServletRequest request, HttpServletResponse response){

        User user = UserUtils.getUser();
        Customer customer = new Customer();
        customer.setDuration(duration);
        PageInfo<Customer> pageInfo = customerService.findAllCustomer(new PageInfo<Customer>(request,response),customer,user);

        Gson gson = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd HH:mm:ss")
                .create();
        return gson.toJson(pageInfo);

    }

}
