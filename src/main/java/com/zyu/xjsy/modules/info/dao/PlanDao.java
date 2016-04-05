package com.zyu.xjsy.modules.info.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.info.entity.Plan;

/**
 * Created by chenjie on 2016/4/5.
 */
@MyBatisDao
public interface PlanDao extends CrudDao<Plan> {
}
