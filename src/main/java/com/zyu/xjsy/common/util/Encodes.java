package com.zyu.xjsy.common.util;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.codec.Hex;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * 封装各种格式的编码解码工具类.
 * 1.Commons-Codec的 hex/base64 编码
 * 2.自制的base62 编码
 * 3.Commons-Lang的xml/html escape
 * 4.JDK提供的URLEncoder
 * Created by travy on 2016/3/27.
 */
public class Encodes {

    private static final String DEFAULT_URL_ENCODING = "UTF-8";
    private static final char[] BASE62 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();


    /**
     * Hex编码.
     */
    public static String encodeHex(byte[] input){
        return new String(Hex.encode(input));
    }


    /**
     * Hex解码.
     */
    public static byte[] decodeHex(String input){
        return Hex.decode(input);
    }

    /**
     * Base64编码.
     */
    public static String encodeBase64(byte[] input){
        return new String(Base64.encode(input));
    }

    /**
     * Base64解码.
     */
    public static byte[] decodeBase64(String input) {
        return Base64.decode(input);
    }


    /**
     * Html 转码.
     */
    public static String escapeHtml(String html){
        return StringEscapeUtils.escapeHtml4(html);
    }

    /**
     * Html 解码.
     */
    public static String unescapeHtml(String htmlEscaped){
        return StringEscapeUtils.unescapeHtml4(htmlEscaped);
    }


    /**
     * URL 编码, Encode默认为UTF-8.
     */
    public static String urlEncode(String part){
        try {
            return URLEncoder.encode(part,DEFAULT_URL_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw  Exceptions.unChecked(e);
        }
    }

    /**
     * URL 解码, Encode默认为UTF-8.
     */
    public static String urlDecode(String part){
        try {
            return URLDecoder.decode(part,DEFAULT_URL_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw Exceptions.unChecked(e);
        }
    }







}
