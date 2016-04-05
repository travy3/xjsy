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
    private String num;

    public PlanInfo() {
        super();
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

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
}
