package com.zyu.xjsy.common.controller;

import com.zyu.xjsy.common.beanvalidator.BeanValidators;
import com.zyu.xjsy.common.util.DateUtils;
import com.zyu.xjsy.common.util.IdGen;
import com.zyu.xjsy.common.web.ExecuteResult;
import org.apache.commons.lang3.StringEscapeUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.validation.ConstraintViolationException;
import javax.validation.Validator;
import java.beans.PropertyEditorSupport;
import java.util.Date;
import java.util.List;


/**
 * Created by travy on 2016/2/17.
 */
public abstract class BaseController {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    protected ExecuteResult executeResult = new ExecuteResult();

    @ModelAttribute("uuid")
    public String  initUUID(){
        return IdGen.uuid();
    }

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

    /**
     * 初始化数据绑定
     * 1. 将所有传递进来的String进行HTML编码，防止XSS攻击
     * 2. 将字段中Date类型转换为String类型
     */
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        // String类型转换，将所有传递进来的String进行HTML编码，防止XSS攻击
        binder.registerCustomEditor(String.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(text == null ? null : StringEscapeUtils.escapeHtml4(text.trim()));
            }
            @Override
            public String getAsText() {
                Object value = getValue();
                return value != null ? value.toString() : "";
            }
        });
        // Date 类型转换
        binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(DateUtils.parseDate(text));
            }
//			@Override
//			public String getAsText() {
//				Object value = getValue();
//				return value != null ? DateUtils.formatDateTime((Date)value) : "";
//			}
        });
    }

}
