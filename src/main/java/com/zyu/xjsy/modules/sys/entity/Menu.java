package com.zyu.xjsy.modules.sys.entity;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by chenjie on 2016/2/18.
 */
public class Menu extends DataEntity<Menu>{

    private String name;
    private String pid;
    private String href;
    private String isShow;// 是否在菜单中显示（1：显示；0：不显示）显示是菜单，不显示是权限
    private String permission;

    public Menu(){
        super();
        this.isShow= Global.SHOW;
    }

    public Menu(String name){
        super();
        this.name = name;
        this.isShow= Global.SHOW;
    }

//    public Menu(String id) {
//        this.id = id;
//    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getIsShow() {
        return isShow;
    }

    public void setIsShow(String isShow) {
        this.isShow = isShow;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }


    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

//    public boolean hasChild(){
//
//    }
}
