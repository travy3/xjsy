package com.zyu.xjsy.common.persistence.annotation;

import com.zyu.xjsy.modules.sys.entity.User;

import java.util.Date;

/**
 * Created by chenjie on 2016/2/18.
 */
public abstract class DataEntity<T> extends BaseEntity<T> {

    private static final long serialVersionUID = 1L;

    protected String remarks;	// 备注
    protected User createBy;	// 创建者
    protected Date createDate;	// 创建日期
    protected User updateBy;	// 更新者
    protected Date updateDate;	// 更新日期
    protected String delFlag; 	// 删除标记（0：正常；1：删除；2：审核）

}
