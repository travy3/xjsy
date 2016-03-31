package com.zyu.xjsy.modules.info.entity;

import com.zyu.xjsy.common.persistence.DataEntity;

/**
 * Created by chenjie on 2016/3/17.
 */
public class Area extends DataEntity<Area> {

    private static final long serialVersionUID = 1L;

    private String pid;

    private String name;

    private String sort;

    private String type;

    public Area(){
        super();
    }

    public Area(String id){
        super(id);
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
