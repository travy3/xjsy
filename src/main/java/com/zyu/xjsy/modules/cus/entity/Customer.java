package com.zyu.xjsy.modules.cus.entity;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.DataEntity;
import com.zyu.xjsy.modules.info.entity.Business;
import com.zyu.xjsy.modules.info.entity.Plan;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;

/**
 * Created by chenjie on 2016/4/13.
 */
public class Customer extends DataEntity<Customer> {

    private static final long serialVersionUID = 1L;

    private String name;
    private String sex;
    private String age;
    private String telephone;
    private String glassesTime; //带镜史
    private String nakedEyeSightL; //裸眼视力
    private String nakedEyeSightR;
    private String recoverEyeSightL;//恢复视力L
    private String recoverEyeSightR;//恢复视力R
    private String eyeglassesSightL;//带镜度数
    private String eyeglassesSightR;
    private Business business;
    private String school;
    private String definL;//清晰度
    private String definR;
    private String hasDisease;//有无眼疾或其他过敏史
    private String eyeControl;//视功能评估：调节力
    private String eyeStrength;//视功能评估：眼肌耐受力
    private String status;// 活跃 流失
    private String cid;
    private Plan plan;//当前方案
    private String duration;// 试用期，治疗期，保健期

    public Customer() {
        super();
        this.status = Global.NO;
        this.duration = Global.DURATION_SY;
    }
    public Customer(String id) {
        super(id);
        this.status = Global.NO;
        this.duration = Global.DURATION_SY;
    }
    public Customer(String id ,String telephone){
        super(id);
        this.telephone = telephone;
        this.status = Global.NO;
        this.duration = Global.DURATION_SY;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Length(min=0, max=50, message="手机长度必须介于 1 和 50之间")
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getGlassesTime() {
        return glassesTime;
    }

    public void setGlassesTime(String glassesTime) {
        this.glassesTime = glassesTime;
    }

    public String getNakedEyeSightL() {
        return nakedEyeSightL;
    }

    public void setNakedEyeSightL(String nakedEyeSightL) {
        this.nakedEyeSightL = nakedEyeSightL;
    }

    public String getNakedEyeSightR() {
        return nakedEyeSightR;
    }

    public void setNakedEyeSightR(String nakedEyeSightR) {
        this.nakedEyeSightR = nakedEyeSightR;
    }

    public String getRecoverEyeSightL() {
        return recoverEyeSightL;
    }

    public void setRecoverEyeSightL(String recoverEyeSightL) {
        this.recoverEyeSightL = recoverEyeSightL;
    }

    public String getRecoverEyeSightR() {
        return recoverEyeSightR;
    }

    public void setRecoverEyeSightR(String recoverEyeSightR) {
        this.recoverEyeSightR = recoverEyeSightR;
    }

    public String getEyeglassesSightL() {
        return eyeglassesSightL;
    }

    public void setEyeglassesSightL(String eyeglassesSightL) {
        this.eyeglassesSightL = eyeglassesSightL;
    }

    public String getEyeglassesSightR() {
        return eyeglassesSightR;
    }

    public void setEyeglassesSightR(String eyeglassesSightR) {
        this.eyeglassesSightR = eyeglassesSightR;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getDefinL() {
        return definL;
    }

    public void setDefinL(String definL) {
        this.definL = definL;
    }

    public String getDefinR() {
        return definR;
    }

    public void setDefinR(String definR) {
        this.definR = definR;
    }

    public String getHasDisease() {
        return hasDisease;
    }

    public void setHasDisease(String hasDisease) {
        this.hasDisease = hasDisease;
    }

    public String getEyeControl() {
        return eyeControl;
    }

    public void setEyeControl(String eyeControl) {
        this.eyeControl = eyeControl;
    }

    public String getEyeStrength() {
        return eyeStrength;
    }

    public void setEyeStrength(String eyeStrength) {
        this.eyeStrength = eyeStrength;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    @NotNull(message="阶段不能为空")
    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String toString(){
        return "custmoer";
    }
}
