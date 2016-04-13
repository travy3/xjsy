package com.zyu.xjsy.modules.info.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.info.dao.PlanDao;
import com.zyu.xjsy.modules.info.dao.PlanInfoDao;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import org.apache.commons.lang3.StringUtils;
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

    public Plan getPlan(Plan plan) {

        return planDao.get(plan);
    }

    public List<Plan> getPlan2(Plan plan){

        List<Plan> planList = planDao.getPlanList(plan);

        return planList;
    }

    @Transactional(readOnly = false)
    public void savePlan(Plan plan) {
        if (StringUtils.isBlank(plan.getId())){
            plan.preInsert();
            planDao.insert(plan);
        }else {
            plan.preUpdate();
            planDao.update(plan);
        }

//        planInfoDao.insertBatch(plan.getPlanInfoList(),plan);

        planInfoDao.insertBatch(plan);
    }

    /******************************PlanInfo************************************************/

    public PageInfo<PlanInfo> getPlanInfo(PageInfo pageInfo,PlanInfo planInfo) {

        planInfo.setPageInfo(pageInfo);

        List<PlanInfo> planInfoList =  planInfoDao.findList(planInfo);

        pageInfo.setList(planInfoList);

        return pageInfo;
    }



    @Transactional(readOnly = false)
    public void savePlanInfo(PlanInfo planInfo) {
        if (StringUtils.isNotBlank(planInfo.getId())){

            planInfoDao.update(planInfo);
        }else {
            planInfoDao.insert(planInfo);
        }
    }



//    public String getPlanInfo(String id){
//
//
//    }
}
