package com.zyu.xjsy.modules.sys.entity;

import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by travy on 2016/3/7.
 */
public class Business extends DataEntity<Business> {

    private String name;

    private String area;

    private String code;

    private String address;

    private String master;

    private String phone;

    private String email;


    public Business(){
        super();
    }


    public Business(String id){
        super(id);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}
