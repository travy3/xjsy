package com.zyu.xjsy.common.persistence.interceptor;

import com.zyu.xjsy.common.config.PageInfo;
import com.zyu.xjsy.common.persistence.dialect.Dialect;
import org.apache.commons.jxpath.JXPathContext;
import org.apache.commons.jxpath.JXPathException;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.executor.ErrorContext;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.executor.ExecutorException;
import org.apache.ibatis.logging.Log;
import org.apache.ibatis.mapping.*;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.property.PropertyTokenizer;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.type.TypeHandler;
import org.apache.ibatis.type.TypeHandlerRegistry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

/**
 * 数据库分页插件，只拦截查询语句.
 * Created by chenjie on 2016/3/21.
 */
@Intercepts({@Signature(type = Executor.class, method = "query",
        args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class})})
public class PaginationInterceptor extends BaseInterceptor {

    private static final long serialVersionUID = 1L;

    @Override
    public Object intercept(Invocation invocation) throws Throwable {

        final MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];

        Object parameter = invocation.getArgs()[1];
        BoundSql boundSql = mappedStatement.getBoundSql(parameter);
        Object parameterObject = boundSql.getParameterObject();

        //获取分页参数对象

        PageInfo pageInfo = searchPageWithXpath(boundSql.getParameterObject(),".","pageInfo","*/pageInfo");
        if(parameterObject != null && pageInfo != null){
            pageInfo = convertParameter(parameterObject,pageInfo);
        }
        //如果设置了分页对象，则进行分页

        if(pageInfo != null && pageInfo.getPageSize() != -1){

            if (StringUtils.isBlank(boundSql.getSql())){
                return null;
            }
            String originalSql = boundSql.getSql().trim();

            //得到总记录数

            pageInfo.setTotal(getCount(originalSql,null,mappedStatement,parameterObject,boundSql,logger));

            //分页查询 本地化对象 修改数据库注意修改实现
            //todo
            String pageSql = generatePageSql(originalSql, pageInfo, DIALECT);

            invocation.getArgs()[2] = new RowBounds(RowBounds.NO_ROW_OFFSET, RowBounds.NO_ROW_LIMIT);
            BoundSql newBoundSql = new BoundSql(mappedStatement.getConfiguration(), pageSql, boundSql.getParameterMappings(), boundSql.getParameterObject());

            MappedStatement newMs = copyFromMappedStatement(mappedStatement, new BoundSqlSqlSource(newBoundSql));

            invocation.getArgs()[0] = newMs;
        }
        return invocation.proceed();
    }

    private PageInfo searchPageWithXpath(Object parameterObject, String... xPaths ) {

        JXPathContext jxPathContext =JXPathContext.newContext(parameterObject);

        Object result;

        for (String xPath : xPaths){
            try {
                result  = jxPathContext.selectSingleNode(xPath);
            }catch (JXPathException e){
                continue;
            }
            if (result instanceof PageInfo){
                return (PageInfo) result;
            }
        }
        return null;
    }

    public Object plugin(Object target) {
        return Plugin.wrap(target,this);
    }

    public void setProperties(Properties properties) {
        super.initProperties(properties);
    }

    /**
     * 查询总纪录数
     * @param sql             SQL语句
     * @param connection      数据库连接
     * @param mappedStatement mapped
     * @param parameterObject 参数
     * @param boundSql        boundSql
     * @return 总记录数
     * @throws SQLException sql查询错误
     */
    public static int getCount(final String sql, final Connection connection,
                               final MappedStatement mappedStatement, final Object parameterObject,
                               final BoundSql boundSql, Log log) throws SQLException {
        final String countSql = "select count(DISTINCT(tmp_count.id)) from (" + sql + ") tmp_count";
        Connection conn = connection;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            if (log.isDebugEnabled()) {
                log.debug("COUNT SQL: " + StringUtils.replaceEach(countSql, new String[]{"\n","\t"}, new String[]{" "," "}));
            }
            if (conn == null){
                conn = mappedStatement.getConfiguration().getEnvironment().getDataSource().getConnection();
            }
            ps = conn.prepareStatement(countSql);
            BoundSql countBS = new BoundSql(mappedStatement.getConfiguration(), countSql,
                    boundSql.getParameterMappings(), parameterObject);
            setParameters(ps, mappedStatement, countBS, parameterObject);
            rs = ps.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }


    /**
     * 对SQL参数(?)设值,参考org.apache.ibatis.executor.parameter.DefaultParameterHandler
     *
     * @param ps              表示预编译的 SQL 语句的对象。
     * @param mappedStatement MappedStatement
     * @param boundSql        SQL
     * @param parameterObject 参数对象
     * @throws java.sql.SQLException 数据库异常
     */
    private static void setParameters(PreparedStatement ps, MappedStatement mappedStatement, BoundSql boundSql, Object parameterObject) throws SQLException {
        ErrorContext.instance().activity("setting parameters").object(mappedStatement.getParameterMap().getId());
        List<ParameterMapping> parameterMappings = boundSql.getParameterMappings();
        if (parameterMappings != null) {
            Configuration configuration = mappedStatement.getConfiguration();
            TypeHandlerRegistry typeHandlerRegistry = configuration.getTypeHandlerRegistry();
            MetaObject metaObject = parameterObject == null ? null :
                    configuration.newMetaObject(parameterObject);
            for (int i = 0; i < parameterMappings.size(); i++) {
                ParameterMapping parameterMapping = parameterMappings.get(i);
                if (parameterMapping.getMode() != ParameterMode.OUT) {
                    Object value;
                    String propertyName = parameterMapping.getProperty();
                    PropertyTokenizer prop = new PropertyTokenizer(propertyName);
                    if (parameterObject == null) {
                        value = null;
                    } else if (typeHandlerRegistry.hasTypeHandler(parameterObject.getClass())) {
                        value = parameterObject;
                    } else if (boundSql.hasAdditionalParameter(propertyName)) {
                        value = boundSql.getAdditionalParameter(propertyName);
                    } else if (propertyName.startsWith(ForEachSqlNode.ITEM_PREFIX) && boundSql.hasAdditionalParameter(prop.getName())) {
                        value = boundSql.getAdditionalParameter(prop.getName());
                        if (value != null) {
                            value = configuration.newMetaObject(value).getValue(propertyName.substring(prop.getName().length()));
                        }
                    } else {
                        value = metaObject == null ? null : metaObject.getValue(propertyName);
                    }
                    @SuppressWarnings("rawtypes")
                    TypeHandler typeHandler = parameterMapping.getTypeHandler();
                    if (typeHandler == null) {
                        throw new ExecutorException("There was no TypeHandler found for parameter " + propertyName + " of statement " + mappedStatement.getId());
                    }
                    typeHandler.setParameter(ps, i + 1, value, parameterMapping.getJdbcType());
                }
            }
        }
    }

    /**
     * 根据数据库方言，生成特定的分页sql
     * @param sql     Mapper中的Sql语句
     * @param page    分页对象
     * @param dialect 方言类型
     * @return 分页SQL
     */
    public static String generatePageSql(String sql, PageInfo page, Dialect dialect) {
        if (dialect.supportsLimit()) {
            return dialect.getLimitString(sql, page.getFirstResult(), page.getPageSize());
        } else {
            return sql;
        }
    }


    private MappedStatement copyFromMappedStatement(MappedStatement ms,
                                                    SqlSource newSqlSource) {
        MappedStatement.Builder builder = new MappedStatement.Builder(ms.getConfiguration(),
                ms.getId(), newSqlSource, ms.getSqlCommandType());
        builder.resource(ms.getResource());
        builder.fetchSize(ms.getFetchSize());
        builder.statementType(ms.getStatementType());
        builder.keyGenerator(ms.getKeyGenerator());
        if (ms.getKeyProperties() != null) {
            for (String keyProperty : ms.getKeyProperties()) {
                builder.keyProperty(keyProperty);
            }
        }
        builder.timeout(ms.getTimeout());
        builder.parameterMap(ms.getParameterMap());
        builder.resultMaps(ms.getResultMaps());
        builder.cache(ms.getCache());
        return builder.build();
    }


    public static class BoundSqlSqlSource implements SqlSource{

        BoundSql boundSql;


        public BoundSql getBoundSql(Object parameterObject) {
            return boundSql;
        }

        public BoundSqlSqlSource(BoundSql boundSql) {
            this.boundSql = boundSql;
        }
    }


}
