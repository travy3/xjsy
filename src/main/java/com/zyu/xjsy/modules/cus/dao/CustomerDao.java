package com.zyu.xjsy.modules.cus.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.cus.entity.Customer;

/**
 * Created by chenjie on 2016/4/13.
 */
@MyBatisDao
public interface CustomerDao extends CrudDao<Customer> {


}
