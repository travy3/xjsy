package com.zyu.xjsy.modules.cus.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.entity.HpManager;

/**
 * Created by chenjie on 2016/5/6.
 */
@MyBatisDao
public interface HpManagerDao extends CrudDao<HpManager>{


    HpManager getMaxNo(Customer customer);

    HpManager getNextNo(HpManager hpManager);
}
