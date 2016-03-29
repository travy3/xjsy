package com.zyu.xjsy.common.util;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionIdGenerator;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.security.SecureRandom;
import java.util.UUID;

/**
 * Created by chenjie on 2016/3/3.
 */
@Service
@Lazy(false)
public class IdGen implements SessionIdGenerator {

    private static SecureRandom random  = new SecureRandom();
    /**
     * 封装JDK自带的UUID, 通过Random数字生成, 中间无-分割.
     */

    public static String uuid(){
        return UUID.randomUUID().toString().replace("-","");
    }


    @Override
    public Serializable generateId(Session session) {
        return IdGen.uuid();
    }

}
