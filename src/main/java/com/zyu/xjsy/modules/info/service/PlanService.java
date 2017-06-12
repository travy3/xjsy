package com.zyu.xjsy.modules.info.service;

import com.zyu.xjsy.common.config.Global;
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
import org.springframework.util.Assert;

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

    public Plan getPlanByCondition(Plan plan) {
        List<Plan> planList = (List<Plan>) planDao.listByCondition(plan);
        if (planList.size()>0){
            return planList.get(0);
        }
        return null;
    }

    public Plan getPlan(Plan plan) {
        Plan planVo =  planDao.get(plan);
        return planVo;
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

        if(plan.getPlanInfoList() != null && plan.getPlanInfoList().size() >  0){
            planInfoDao.insertBatch(plan);
        }
    }

    @Transactional(readOnly = false)
    public void delPlan(Plan plan){
        planDao.delete(plan);
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

    @Transactional(readOnly = false)
    public void delPlanInfo(PlanInfo planInfo) {
        planInfoDao.delete(planInfo);
    }

    public Plan getPlanByType(Plan nextPlan) {
        return planDao.getByType(nextPlan);
    }

    public String checkOrderNoisRight(String orderNo, String levelNo, String eyeType) {
        Assert.noNullElements(new Object[]{orderNo,levelNo,eyeType});
        List<Plan> planList = planInfoDao.getByCondition(orderNo,levelNo,eyeType);
        if (planList.size()>0){
            return Global.TRUE;
        }
        return Global.FALSE;
    }

}
