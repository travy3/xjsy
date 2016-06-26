package com.zyu.xjsy.common.config;

import com.zyu.xjsy.common.util.PropertiesLoader;
import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by travy on 2016/3/9.
 */
public class Global {
    /**
     * 当前对象实例
     */
    private static Global global;


    private static Map<String,String> map = new HashMap<String, String>();

    private static PropertiesLoader propertiesLoader = new PropertiesLoader("xjsy.properties");


    // 显示/隐藏
    public static final String SHOW = "1";
    public static final String HIDE = "0";

    // 是/否
    public static final String YES = "1";
    public static final String NO = "0";

    // 对/错
    public static final String TRUE = "true";
    public static final String FALSE = "false";


    // 试用期/治疗期/保健期
    public static final String DURATION_SY = "0";
    public static final String DURATION_ZL = "1";
    public static final String DURATION_BJ = "2";

//    public static synchronized Global getInstance(){
//        if (global==null)
//            global = new Global();
//        return global;
//    }

    /**
     * 粒度小
     * @return
     */
    public static Global getInstance(){
        if (global==null)
            synchronized (Global.class){
                if (global==null){
                    global = new Global();
                }
            }
        return global;
    }

    /**
     * 获取配置信息
     * @param key
     * @return
     */
    public static String getConfig(String key){

        String value = map.get(key);
        if (value == null) {
            value = propertiesLoader.getValue(key);
            map.put(key,value !=null?value: StringUtils.EMPTY);
        }
        return value;
    }

    /**
     * 页面获取常量
     * @see ${fns:getConst('YES')}
     */
    public static Object getConst(String field) {
        try {
            return Global.class.getField(field).get(null);
        } catch (Exception e) {
            // 异常代表无配置，这里什么也不做
        }
        return null;
    }




    /**
     * 获取URL后缀
     */
    public static String getUrlSuffix() {
        return getConfig("urlSuffix");
    }

    /**
     * 获取管理端根路径
     */
    public static String getAdminPath() {
        return getConfig("adminPath");
    }

    /**
     * 获取前端根路径
     */
    public static String getFrontPath() {
        return getConfig("frontPath");
    }



}
