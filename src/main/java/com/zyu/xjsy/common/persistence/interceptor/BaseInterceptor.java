package com.zyu.xjsy.common.persistence.interceptor;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Invocation;

import java.io.Serializable;
import java.util.Properties;

/**
 * Created by travy on 2016/3/20.
 */
public abstract class BaseInterceptor implements Interceptor , Serializable {

    private static final long serialVersionUID = 1L;

    protected static final String PAGEINFO = "pageInfo";




    public Object intercept(Invocation invocation) throws Throwable {
        return null;
    }

    public Object plugin(Object target) {
        return null;
    }

    public void setProperties(Properties properties) {

    }
}
