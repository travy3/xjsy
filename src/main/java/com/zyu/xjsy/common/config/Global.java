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