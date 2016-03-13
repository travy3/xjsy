package com.zyu.xjsy.common.config;

import java.util.Properties;

/**
 * Created by travy on 2016/3/9.
 */
public class Global {
    /**
     * 当前对象实例
     */
    private static Global global = new Global();

    //todo
    private static Properties properties = new Properties();

    // 显示/隐藏
    public static final String SHOW = "1";
    public static final String HIDE = "0";

    // 是/否
    public static final String YES = "1";
    public static final String NO = "0";

    // 对/错
    public static final String TRUE = "true";
    public static final String FALSE = "false";
}
