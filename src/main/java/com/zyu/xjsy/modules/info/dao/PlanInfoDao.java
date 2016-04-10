package com.zyu.xjsy.modules.info.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.info.entity.PlanInfo;

import java.util.List;

/**
 * Created by chenjie on 2016/4/5.
 */
@MyBatisDao
public interface PlanInfoDao extends CrudDao<PlanInfo> {

    void insertBatch(List<PlanInfo> planInfos);
}
