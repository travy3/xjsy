package com.zyu.xjsy.modules.sys.entity;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.persistence.DataEntity;

import java.util.List;

/**
 * Created by travy on 2016/3/7.
 */
public class Role extends DataEntity<Role> {

    private static final long serialVersionUID = 1L;

    private String name;

    private List<Menu> menuList = Lists.newArrayList(); // 拥有菜单列表

    public Role() {
        super();
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Menu> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<Menu> menuList) {
        this.menuList = menuList;
    }
}
