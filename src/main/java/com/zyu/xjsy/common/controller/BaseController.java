package com.zyu.xjsy.common.controller;

import com.zyu.xjsy.common.beanvalidator.BeanValidators;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;

import javax.validation.ConstraintViolationException;
import javax.validation.Validator;
import java.util.List;


/**
 * Created by travy on 2016/2/17.
 */
public abstract class BaseController {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * 管理基础路径
     */
    @Value("${adminPath}")
    protected String adminPath;

    /**
     * 前端基础路径
     */
    @Value("${frontPath}")
    protected String frontPath;

    /**
     * 前端URL后缀
     */
    @Value("${urlSuffix}")
    protected String urlSuffix;


    /**
     * 验证Bean实例对象
     */
    @Autowired
    protected Validator validator;

    protected boolean beanValidator(Model model, Object object, Class<?>... groups){

        try {
            BeanValidators.validateWithException(validator,object,groups);
        }catch (ConstraintViolationException e){
            List<String> list= BeanValidators.extractPropertyAndMessageAsList(e,": ");
            list.add(0, "数据验证失败：");
            addMessage(model, list.toArray(new String[]{}));
            return false;
        }
        return true;

    }


    /**
     * 添加Model消息
     * @param model
     * @param messages
     */
    protected void addMessage(Model model,String... messages){
        StringBuilder sb = new StringBuilder();

        for (String message: messages){
            sb.append(message).append(messages.length>1?"<br/>":"");
        }
        model.addAttribute("message",sb.toString());
    }



}
