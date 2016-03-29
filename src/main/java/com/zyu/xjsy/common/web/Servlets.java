package com.zyu.xjsy.common.web;

import com.zyu.xjsy.common.config.Global;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by chenjie on 2016/3/29.
 */
public class Servlets {
    // 静态文件后缀
    private final static String[] staticFiles = StringUtils.split(Global.getConfig("web.staticFile"), ",");


    // 动态映射URL后缀
    private final static String urlSuffix = Global.getUrlSuffix();


    /**
     * 获取当前请求对象
     * @return
     */
    public static HttpServletRequest getRequest(){
        return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    }


    /**
     * 判断访问URI是否是静态文件请求
     * @throws Exception
     */
    public static boolean isStaticFile(String uri){
        if (staticFiles == null){
            try {
                throw new Exception("检测到“app.properties”中没有配置“web.staticFile”属性。配置示例：\n#静态文件后缀\n"
                        +"web.staticFile=.css,.js,.png,.jpg,.gif,.jpeg,.bmp,.ico,.swf,.psd,.htc,.crx,.xpi,.exe,.ipa,.apk");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
//		if ((StringUtils.startsWith(uri, "/static/") || StringUtils.endsWithAny(uri, sfs))
//				&& !StringUtils.endsWithAny(uri, ".jsp") && !StringUtils.endsWithAny(uri, ".java")){
//			return true;
//		}
        if (StringUtils.endsWithAny(uri, staticFiles) && !StringUtils.endsWithAny(uri, urlSuffix)
                && !StringUtils.endsWithAny(uri, ".jsp") && !StringUtils.endsWithAny(uri, ".java")){
            return true;
        }
        return false;
    }

}
