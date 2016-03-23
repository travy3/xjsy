package com.zyu.xjsy.common.persistence.interceptor;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.factory.DefaultObjectFactory;
import org.apache.ibatis.reflection.factory.ObjectFactory;
import org.apache.ibatis.reflection.wrapper.DefaultObjectWrapperFactory;
import org.apache.ibatis.reflection.wrapper.ObjectWrapperFactory;
import org.apache.ibatis.session.Configuration;

import java.sql.Connection;
import java.util.Properties;

/**
 * Created by chenjie on 2016/3/22.
 */
@Intercepts(@Signature(type = StatementHandler.class,method = "prepare", args = {Connection.class}))
public class PageInterceptor extends BaseInterceptor{

    private static final ObjectFactory DEFAULT_OBJECT_FACTORY = new DefaultObjectFactory();

    private static final ObjectWrapperFactory DEFAULT_OBJECT_WRAPPER_FACTORY  = new DefaultObjectWrapperFactory();


    public Object intercept(Invocation invocation) throws Throwable {

        StatementHandler statementHandler  = (StatementHandler) invocation.getTarget();

        MetaObject metaObject = MetaObject.forObject(statementHandler,DEFAULT_OBJECT_FACTORY,DEFAULT_OBJECT_WRAPPER_FACTORY);

        // 分离代理对象链(由于目标类可能被多个拦截器拦截，从而形成多次代理，通过下面的两次循环
        // 可以分离出最原始的的目标类)
        while(metaObject.hasGetter("h")){

            Object object  = metaObject.getValue("h");
            metaObject = MetaObject.forObject(object,DEFAULT_OBJECT_FACTORY,DEFAULT_OBJECT_WRAPPER_FACTORY);

        }

        while (metaObject.hasGetter("target")){

            Object object = metaObject.getValue("target");

            metaObject  = MetaObject.forObject(object,DEFAULT_OBJECT_FACTORY,DEFAULT_OBJECT_WRAPPER_FACTORY);
        }

        Configuration configuration = (Configuration) metaObject.getValue("delegate.configuration");


        return null;
    }

    @Override
    protected void initProperties(Properties p) {
        super.initProperties(p);
    }

    public Object plugin(Object target) {
        return null;
    }

    public void setProperties(Properties properties) {

    }
}
