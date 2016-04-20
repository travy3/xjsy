package com.zyu.xjsy.modules.cus.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.sys.entity.User;

import java.util.List;

/**
 * Created by chenjie on 2016/4/13.
 */
@MyBatisDao
public interface CustomerDao extends CrudDao<Customer> {


    List<Customer> findList(Customer customer, User user);
}
