package com.zyu.xjsy.common.config;

import com.google.common.collect.Lists;

import java.util.List;

/**
 * Created by chenjie on 2016/3/23.
 */
public class PageList<T> {

    private PageInfo pageInfo;

    private List<T> list = Lists.newArrayList();

    public PageList(PageInfo pageInfo, List<T> list) {
        this.pageInfo = pageInfo;
        this.list = list;
    }

    public PageInfo getPageInfo() {
        return pageInfo;
    }

    public void setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
