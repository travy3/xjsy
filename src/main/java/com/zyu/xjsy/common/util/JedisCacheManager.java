package com.zyu.xjsy.common.util;

import com.zyu.xjsy.common.config.Global;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.apache.shiro.cache.CacheManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by chenjie on 2016/4/27.
 */
public class JedisCacheManager implements CacheManager {

    private static Logger logger = LoggerFactory.getLogger(JedisCacheManager.class);



    private JedisPool jedisPool;

    public static final String KEY_PREFIX = Global.getConfig("redis.keyPrefix");


    public Jedis getJedis(){
        Jedis jedis = null;
        try {
            jedis = jedisPool.getResource();
        }catch (Exception e){
            logger.error("[JedisUtils] getJedis error:"+e.getMessage());
            if (null != jedis){
                jedis.close();
            }
        }
        return jedis;
    }


    public JedisPool getJedisPool() {
        return jedisPool;
    }

    public void setJedisPool(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

    @Override
    public <K, V> Cache<K, V> getCache(String name) throws CacheException {

        //todo
        return null;
    }
}
