package com.zyu.xjsy.modules.info.entity;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.persistence.DataEntity;

import java.util.List;

/**
 * Created by chenjie on 2016/4/5.
 */
public class Plan extends DataEntity<Plan> {

    private String name;


    private List<PlanInfo> planInfoList = Lists.newArrayList();

    public Plan(){
        super();
    }

    public Plan(String id){
        super(id);
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<PlanInfo> getPlanInfoList() {
        return planInfoList;
    }

    public void setPlanInfoList(List<PlanInfo> planInfoList) {
        this.planInfoList = planInfoList;
    }

}
