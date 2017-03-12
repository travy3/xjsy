package com.zyu.xjsy.common.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 全局异常处理
 *
 * @author travy
 * @createTime 2017-01-31 15:18
 */
@ControllerAdvice(annotations = Controller.class)
public class RestExceptionHandler {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestExceptionHandler.class);

    @ExceptionHandler(Exception.class)
    public void handleExp(Exception e){
        LOGGER.error(e.getMessage());
        LOGGER.error(Thread.currentThread().getStackTrace()[2].getMethodName(),e);
        e.printStackTrace();
    }
}
