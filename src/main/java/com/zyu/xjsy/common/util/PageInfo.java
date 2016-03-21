package com.zyu.xjsy.common.util;

/**
 * Created by travy on 2016/3/20.
 */
public class PageInfo {

    private int total;


    private int pageSize;

    private int pageCurrent;

    private int pageNum;

    private String orderField;

    private String orderDirection;

    public PageInfo(int total, String orderField) {
        this.total = total;
        this.orderField = orderField;
    }

    public PageInfo(int total, int pageSize, int pageCurrent, int pageNum, String orderField, String orderDirection) {
        this.total = total;
        this.pageSize = pageSize;
        this.pageCurrent = pageCurrent;
        this.pageNum = pageNum;
        this.orderField = orderField;
        this.orderDirection = orderDirection;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCurrent() {
        return pageCurrent;
    }

    public void setPageCurrent(int pageCurrent) {
        this.pageCurrent = pageCurrent;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public String getOrderField() {
        return orderField;
    }

    public void setOrderField(String orderField) {
        this.orderField = orderField;
    }

    public String getOrderDirection() {
        return orderDirection;
    }

    public void setOrderDirection(String orderDirection) {
        this.orderDirection = orderDirection;
    }

    public int getFirstResult(){
        int firstResult = (getPageCurrent() - 1) * getPageSize();
        if (firstResult >= getTotal()) {
            firstResult = 0;
        }
        return firstResult;
    }
}
