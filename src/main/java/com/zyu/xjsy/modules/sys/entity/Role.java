package com.zyu.xjsy.modules.sys.entity;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.persistence.DataEntity;

import java.util.List;

/**
 * Created by travy on 2016/3/7.
 */
public class Role extends DataEntity<Role> {

    private static final long serialVersionUID = 1L;

    private User user;		// 根据用户ID查询角色列表

    private String name;


    private List<Menu> menuList = Lists.newArrayList(); // 拥有菜单列表

}