package com.zyu.xjsy.modules.info.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by chenjie on 2016/4/5.
 */
@MyBatisDao
public interface PlanInfoDao extends CrudDao<PlanInfo> {

    void insertBatch(@Param("planInfoList") List<PlanInfo> planInfoList, @Param("plan") Plan plan);

    void insertBatch(Plan plan);
}
