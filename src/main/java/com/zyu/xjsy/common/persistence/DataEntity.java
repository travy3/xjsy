package com.zyu.xjsy.common.persistence;

import com.zyu.xjsy.common.util.IdGen;
import com.zyu.xjsy.modules.sys.entity.User;

import java.util.Date;

/**
 * 数据Entity
 * Created by chenjie on 2016/2/18.
 */
public abstract class DataEntity<T> extends BaseEntity<T> {

    private static final long serialVersionUID = 1L;

    protected String remarks;	// 备注
    protected User createBy;	// 创建者
    protected Date createDate;	// 创建日期
    protected User updateBy;	// 更新者
    protected Date updateDate;	// 更新日期
    @Override
    public void preInsert() {

        if (!this.isNewRecord) {
            setId(IdGen.uuid());
        }


    }

    @Override
    public void preUpdate() {

    }
}
