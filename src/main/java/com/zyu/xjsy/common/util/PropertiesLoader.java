package com.zyu.xjsy.common.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.ResourceLoader;

import java.util.Properties;

/**
 * Created by travy on 2016/3/9.
 */
public class PropertiesLoader {

    private static Logger logger  = LoggerFactory.getLogger(PropertiesLoader.class);

    private static ResourceLoader resourceLoader = new DefaultResourceLoader();

    private Properties properties;

    public PropertiesLoader(String... resourcePaths){

        properties =loadProperties(resourcePaths);
    }


    public Properties getProperties() {
        return properties;
    }

    private Properties loadProperties(String... resourcesPaths){

        return null;

    }

}
