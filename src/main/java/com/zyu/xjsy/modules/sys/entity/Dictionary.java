package com.zyu.xjsy.modules.sys.entity;

import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by chenjie on 2016/3/17.
 */
public class Dictionary extends DataEntity<Dictionary> {

    private String value;

    private String pid;

    private String type;

    private Integer sort;

    public Dictionary(String id,String value){
        super(id);
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
}
