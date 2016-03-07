package com.zyu.xjsy.modules.sys.entity;

import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by travy on 2016/3/7.
 */
public class Role extends DataEntity<Role> {

    private static final long serialVersionUID = 1L;

    private User user;		// 根据用户ID查询角色列表
}
