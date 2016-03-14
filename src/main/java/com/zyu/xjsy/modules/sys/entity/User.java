package com.zyu.xjsy.modules.sys.entity;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.persistence.DataEntity;

import java.util.List;

/**
 * Created by chenjie on 2016/2/18.
 */
public class User extends DataEntity<User> {

    private static final long serialVersionUID = 1L;

    private String loginName;

    private String password;

    private String name;

    private String email;

    private String mobile;

    private Role role;

    private Business business; // 归属加盟商

    private List<Role> roleList = Lists.newArrayList();


    public User(String id){
        super(id);
    }

    public User(String id, String loginName){
        super(id);
        this.loginName = loginName;
    }

    public User(Role role){
        super();
        this.role = role;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

}
