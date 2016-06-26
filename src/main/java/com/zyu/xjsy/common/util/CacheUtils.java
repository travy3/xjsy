package com.zyu.xjsy.common.util;

import com.zyu.xjsy.modules.sys.util.SpringContextHolder;
import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

/**
 * Created by travy on 2016/3/27.
 */
public class CacheUtils {

    private static CacheManager cacheManager = SpringContextHolder.getBean("cacheManager");

    private static final String SYS_CACHE = "sysCache";

    private static final  String SYS_USERLIST_CACHE = "";

    private static final String USER_CACHE = "userCache";


    /**
     * 获取SYS_CACHE缓存
     * @param key
     * @return
     */
    public static Object get(String key) {
        return get(SYS_CACHE, key);
    }



    public static Object get(String cacheName,String key){
        Element element = getCache(cacheName).get(key);
        return element==null?null:element.getObjectValue();
    }

    private static Cache getCache(String cacheName){
        Cache cache = cacheManager.getCache(cacheName);
        if(cache == null){
            cacheManager.addCache(cacheName);
            cache = cacheManager.getCache(cacheName);
            cache.getCacheConfiguration().setEternal(true);
        }
        return cache;
    }

    /**
     * 写入缓存
     * @param cacheName
     * @param key
     * @param value
     */
    public static void put(String cacheName,String key,Object value){
        Element element = new Element(key,value);

        getCache(cacheName).put(element);
    }

    /**
     * 从缓存中移除
     * @param cacheName
     * @param key
     */
    public static void remove(String cacheName,String key){
        getCache(cacheName).remove(key);
    }

    /**
     * 从缓存中移除
     * @param cacheName
     */
    public static void remove(String cacheName){
        getCache(cacheName).removeAll();
    }


    /**
     * 清除当前用户缓存
     */
    public static void clearCache(){
//        removeCache(USER_CACHE,CACHE_ROLE_LIST);
//        removeCache(CACHE_MENU_LIST);
//        removeCache(CACHE_AREA_LIST);
//        removeCache(CACHE_OFFICE_LIST);
//        removeCache(CACHE_OFFICE_ALL_LIST);
//        UserUtils.clearCache(getUser());
    }


}
