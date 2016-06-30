package com.zyu.xjsy.modules.sys.entity;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.DataEntity;

import java.util.List;

/**
 * Created by chenjie on 2016/2/18.
 */
public class Menu extends DataEntity<Menu>{

    private String name;
    private String pid;
    private String href;
    private String isShow;// 是否在菜单中显示（1：显示；0：不显示）显示是菜单，不显示是权限
    private String permission;
    private int priority;
    private boolean available;
    private Type type = Type.menu;

    public enum Type{
        menu("菜单"),
        button("按钮");
        private final String info;

        private Type(String info){
            this.info = info;
        }

        public String getInfo(){
            return info;
        }

    }

    public Menu(){
        super();
        this.isShow= Global.SHOW;
        this.available =true;
    }

    public Menu(String name){
        super();
        this.name = name;
        this.isShow= Global.SHOW;
    }


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

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }


    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public boolean hasChild(List<Menu> menuList , String parentId){

        for (int i  = 0 ; i<menuList.size() ; i++){
        Menu menu = menuList.get(i);
        if(menu.getPid()!=null && menu.getPid().equals(parentId)){

            for (int j = 0 ; j<menuList.size() ; j++){
                Menu menuChild = menuList.get(j);
                if(menuChild .getPid() != null && menuChild.getPid().equals(menu.getId())){
                    hasChild(menuList,menu.getId());
                }
                break;
            }
            return true;
        }
    }
    return false;
}
}
