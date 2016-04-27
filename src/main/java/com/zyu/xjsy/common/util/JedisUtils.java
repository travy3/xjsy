package com.zyu.xjsy.common.util;

import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.modules.sys.util.SpringContextHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by chenjie on 2016/4/27.
 */
public class JedisUtils {

    private static Logger logger = LoggerFactory.getLogger(JedisUtils.class);

    private static JedisPool jedisPool = SpringContextHolder.getBean(JedisPool.class);

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




}
