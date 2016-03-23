package com.zyu.xjsy.common.persistence.interceptor;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.config.PageInfo;
import com.zyu.xjsy.common.persistence.dialect.Dialect;
import com.zyu.xjsy.common.persistence.dialect.MySQLDialect;
import com.zyu.xjsy.common.util.Reflections;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.plugin.Interceptor;

import java.io.Serializable;
import java.util.Properties;

/**
 * Mybatis分页拦截器基类
 * Created by travy on 2016/3/20.
 */
public abstract class BaseInterceptor implements Interceptor , Serializable {

    private static final long serialVersionUID = 1L;

    protected static final String PAGEINFO = "pageInfo";


    protected Log logger = LogFactory.getLog(getClass());

    protected Dialect DIALECT;



    protected static final String DELEGATE = "delegate";

    protected static final String MAPPED_STATEMENT = "mappedStatement";


    /**
     * 设置属性，支持自定义方言类和制定数据库的方式
     * <code>dialectClass</code>,自定义方言类。可以不配置这项
     * <ode>dbms</ode> 数据库类型，插件支持的数据库
     * <code>sqlPattern</code> 需要拦截的SQL ID
     * @param p 属性
     */
    protected void initProperties(Properties p){

        Dialect dialect = null;

        String dbType = Global.getInstance().getConfig("jdbc.type");

        if("mysql".equals(dbType)){
            dialect = new MySQLDialect();
        }
        if (dialect == null) {
            throw new RuntimeException("mybatis dialect error.");
        }
        DIALECT = dialect;
    }

    /**
     * 对参数进行转换和检查
     * @param parameterObject 参数对象
     * @param pageInfo            分页对象
     * @return 分页对象
     * @throws NoSuchFieldException 无法找到参数
     */
    @SuppressWarnings("unchecked")
    protected static PageInfo convertParameter(Object parameterObject, PageInfo pageInfo) {
        try{
            if (parameterObject instanceof PageInfo) {
                return (PageInfo) parameterObject;
            } else {
                return (PageInfo) Reflections.getFieldValue(parameterObject, PAGEINFO);
            }
        }catch (Exception e) {
            return null;
        }
    }





}
