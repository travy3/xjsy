package com.zyu.xjsy.common.persistence.interceptor;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.dialect.Dialect;
import com.zyu.xjsy.common.persistence.dialect.MySQLDialect;
import com.zyu.xjsy.common.util.PageInfo;
import com.zyu.xjsy.common.util.Reflections;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Invocation;

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


    public Object intercept(Invocation invocation) throws Throwable {
        return null;
    }

    public Object plugin(Object target) {
        return null;
    }

    public void setProperties(Properties properties) {

    }

    protected void initProperties(Properties p){

        Dialect dialect = null;

        String dbType = Global.getConfig("jdbc.type");

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
