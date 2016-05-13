package com.zyu.xjsy.modules.cus.entity;

import com.zyu.xjsy.common.persistence.DataEntity;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;

import java.util.Date;

/**
 * Created by chenjie on 2016/5/6.
 */
public class HpManager extends DataEntity<HpManager> {

    private static final long serialVersionUID = 1L;

    private Customer customer;
    private Integer no;
    private Date date;
    private String beforeAdjustLStart;
    private String beforeAdjustRStart;
    private String beforeAdjustLEnd;
    private String beforeAdjustREnd;
    private String trainOne;
    private String trainTwo;
    private String afterAdjustL;
    private String afterAdjustR;
    private String optometryL;  //验光L
    private String optometryR;//验光R
    private String memo;
    private Plan plan;
    private PlanInfo planInfo;
    private String code;
    private String times;
    private String paper;

    public HpManager(){
        super();
    }

    public HpManager(String id){
        super(id);
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }


    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getBeforeAdjustLStart() {
        return beforeAdjustLStart;
    }

    public void setBeforeAdjustLStart(String beforeAdjustLStart) {
        this.beforeAdjustLStart = beforeAdjustLStart;
    }

    public String getBeforeAdjustRStart() {
        return beforeAdjustRStart;
    }

    public void setBeforeAdjustRStart(String beforeAdjustRStart) {
        this.beforeAdjustRStart = beforeAdjustRStart;
    }

    public String getBeforeAdjustLEnd() {
        return beforeAdjustLEnd;
    }

    public void setBeforeAdjustLEnd(String beforeAdjustLEnd) {
        this.beforeAdjustLEnd = beforeAdjustLEnd;
    }

    public String getBeforeAdjustREnd() {
        return beforeAdjustREnd;
    }

    public void setBeforeAdjustREnd(String beforeAdjustREnd) {
        this.beforeAdjustREnd = beforeAdjustREnd;
    }

    public String getTrainOne() {
        return trainOne;
    }

    public void setTrainOne(String trainOne) {
        this.trainOne = trainOne;
    }

    public String getTrainTwo() {
        return trainTwo;
    }

    public void setTrainTwo(String trainTwo) {
        this.trainTwo = trainTwo;
    }

    public String getAfterAdjustL() {
        return afterAdjustL;
    }

    public void setAfterAdjustL(String afterAdjustL) {
        this.afterAdjustL = afterAdjustL;
    }

    public String getAfterAdjustR() {
        return afterAdjustR;
    }

    public void setAfterAdjustR(String afterAdjustR) {
        this.afterAdjustR = afterAdjustR;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public PlanInfo getPlanInfo() {
        return planInfo;
    }

    public void setPlanInfo(PlanInfo planInfo) {
        this.planInfo = planInfo;
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

    public String getOptometryL() {
        return optometryL;
    }

    public void setOptometryL(String optometryL) {
        this.optometryL = optometryL;
    }

    public String getOptometryR() {
        return optometryR;
    }

    public void setOptometryR(String optometryR) {
        this.optometryR = optometryR;
    }
}
