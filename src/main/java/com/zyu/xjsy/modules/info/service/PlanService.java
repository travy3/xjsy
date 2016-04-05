package com.zyu.xjsy.modules.info.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.info.dao.PlanDao;
import com.zyu.xjsy.modules.info.dao.PlanInfoDao;
import com.zyu.xjsy.modules.info.entity.Plan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by chenjie on 2016/4/5.
 */
@Transactional(readOnly = true)
@Service
public class PlanService extends BaseService {

    @Autowired
    private PlanDao planDao;

    @Autowired
    private PlanInfoDao planInfoDao;


    public PageInfo<Plan> findAllPlan(PageInfo pageInfo,Plan plan) {

        plan.setPageInfo(pageInfo);

        List<Plan> planList = planDao.findList(plan);

        pageInfo.setList(planList);

        return pageInfo;
    }
}
