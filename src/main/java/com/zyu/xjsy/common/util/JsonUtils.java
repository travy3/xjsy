package com.zyu.xjsy.common.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Created by chenjie on 2016/5/23.
 */
public class JsonUtils {

    private static Gson gson = new Gson();

    private static GsonBuilder gsonBuilder = new GsonBuilder();

    public static Gson getGson(){
        return gson;
    }


    public static GsonBuilder getGsonBuilder(){
        return gsonBuilder;
    }

}
