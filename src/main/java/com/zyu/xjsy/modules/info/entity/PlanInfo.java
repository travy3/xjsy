package com.zyu.xjsy.modules.info.entity;

import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by chenjie on 2016/4/5.
 */
public class PlanInfo extends DataEntity<PlanInfo> {

    private static final long serialVersionUID = 1L;

    private String code;
    private String times;
    private String paper;
    private Integer num;
    private Plan plan;

    public PlanInfo() {
        super();
    }

    public PlanInfo(String id){
        super(id);
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }
}
