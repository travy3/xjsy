package com.zyu.xjsy.modules.info.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.info.entity.Plan;

import java.util.List;

/**
 * Created by chenjie on 2016/4/5.
 */
@MyBatisDao
public interface PlanDao extends CrudDao<Plan> {
    List<Plan> getPlanList(Plan plan);

    /**
     * 按照level and order 查询 对应plan
     * @param nextPlan
     * @return
     */
    Plan getByType(Plan nextPlan);

    /**
     * 按照level order eyeType
     * @param plan
     * @return
     */
    List<Plan> listByCondition(Plan plan);
}
