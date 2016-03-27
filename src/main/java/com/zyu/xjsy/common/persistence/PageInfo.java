package com.zyu.xjsy.common.persistence;

import com.google.common.collect.Lists;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by travy on 2016/3/20.
 */
public class PageInfo<T> {

    private int total;

    private int pageSize=20;

    private int pageCurrent=1;

    private int pageNum;


    private String orderField;

    private String orderDirection;

    private List<T> list  = Lists.newArrayList();

    public PageInfo() {
//        this.pageCurrent = 1;
//        this.pageSize = 20;
    }


   public PageInfo(HttpServletRequest request , HttpServletResponse response){

       String no = request.getParameter("pageCurrent");
       if(StringUtils.isNumeric(no)){
           this.setPageCurrent(Integer.parseInt(no));
       }

       String size = request.getParameter("pageSize");
       if (StringUtils.isNumeric(size)){
           this.setPageSize(Integer.parseInt(size));
       }

   }

    public PageInfo(int total, int pageSize, int pageCurrent, int pageNum, String orderField, String orderDirection, List<T> list) {
        this.total = total;
        this.pageSize = pageSize;
        this.pageCurrent = pageCurrent;
        this.pageNum = pageNum;
        this.orderField = orderField;
        this.orderDirection = orderDirection;
        this.list = list;
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

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getFirstResult(){
        int firstResult = (getPageCurrent() - 1) * getPageSize();
        if (firstResult >= getTotal()) {
            firstResult = 0;
        }
        return firstResult;
    }

}
