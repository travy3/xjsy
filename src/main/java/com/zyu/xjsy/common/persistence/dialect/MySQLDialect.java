package com.zyu.xjsy.common.persistence.dialect;

/**
 * Created by travy on 2016/3/20.
 */
public class MySQLDialect implements Dialect {

    public boolean supportsLimit() {
        return true;
    }

    public String getLimitString(String sql, int offSet, int limit) {
        return getLimitString(sql, offSet, Integer.toString(offSet),
                Integer.toString(limit));
    }

    /**
     * 将sql变成分页sql语句,提供将offset及limit使用占位符号(placeholder)替换.
     * <pre>
     * 如mysql
     * dialect.getLimitString("select * from user", 12, ":offset",0,":limit") 将返回
     * select * from user limit :offset,:limit
     * </pre>
     *
     * @param sql               实际SQL语句
     * @param offSet            分页开始纪录条数
     * @param offSetPlaceholder 分页开始纪录条数－占位符号
     * @param limitPlaceholder  分页纪录条数占位符号
     * @return 包含占位符的分页sql
     */
    public String getLimitString(String sql, int offSet, String offSetPlaceholder, String limitPlaceholder){

        StringBuilder stringBuilder = new StringBuilder(sql);

        stringBuilder.append(" limit ");

        if (offSet > 0 ){
            stringBuilder.append(offSetPlaceholder).append(",").append(limitPlaceholder);
        }else {
            stringBuilder.append(limitPlaceholder);
        }
        return stringBuilder.toString();
    }

}
