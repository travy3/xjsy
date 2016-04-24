package com.zyu.xjsy.common.service;

import com.zyu.xjsy.modules.sys.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by chenjie on 2016/3/2.
 */
@Transactional(readOnly = true)
public abstract class BaseService {

    Logger logger = LoggerFactory.getLogger(getClass());



    public static String dataScopeFilter(User user) {

        StringBuilder sqlString = new StringBuilder();


        if (!user.isAdmin()){
            sqlString.append("b.id = '"+user.getBusiness().getId()+"'");
        }



        return "";

    }




}
