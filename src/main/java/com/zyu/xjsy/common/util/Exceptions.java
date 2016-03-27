package com.zyu.xjsy.common.util;

/**
 * 关于异常的工具类.
 * Created by travy on 2016/3/27.
 */
public class Exceptions {


    /**
     * 将CheckedException转换为UncheckedException.
     */
    public static RuntimeException unChecked(Exception e){
        if(e instanceof RuntimeException){
            return (RuntimeException) e;
        }else {
            return new RuntimeException(e);
        }
    }


}
