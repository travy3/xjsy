package com.zyu.xjsy.common.util;

import java.util.Date;

/**
 * Created by chenjie on 2016/3/29.
 */
public class DateUtils extends org.apache.commons.lang3.time.DateUtils {


    /**
     * 获取过去的分钟
     * @param date
     * @return
     */
    public static long pastMinutes(Date date) {
        long t = new Date().getTime()-date.getTime();
        return t/(60*1000);
    }
}
