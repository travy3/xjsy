package com.zyu.xjsy.modules.cus.service;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.modules.cus.dao.CustomerDao;
import com.zyu.xjsy.modules.cus.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenjie on 2016/4/13.
 */
@Service
public class CustomerService {


    @Autowired
    private CustomerDao customerDao;

    public PageInfo<Customer> findAllCustomer(PageInfo pageInfo, Customer customer) {

        List<Customer> customerList = Lists.newArrayList();

        customerList = customerDao.findList(customer);

        pageInfo.setList(customerList);

        return pageInfo;

    }
}
