package com.zyu.xjsy.common.util;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by travy on 2016/3/9.
 */
public class PropertiesLoader {

    private static Logger logger  = LoggerFactory.getLogger(PropertiesLoader.class);

    private static ResourceLoader resourceLoader = new DefaultResourceLoader();

    private Properties properties = new Properties();

    public PropertiesLoader(String... resourcePaths){

        properties =loadProperties(resourcePaths);
    }

    public Properties getProperties() {
        return properties;
    }

    private Properties loadProperties(String... resourcesPaths){

        for(String location : resourcesPaths){

            Resource resource =  resourceLoader.getResource(location);

            InputStream reader = null ;

            try {
                reader =  resource.getInputStream();
                properties.load(reader);
            } catch (IOException e) {
                e.printStackTrace();
                logger.info(getClass().getName()+".loadProperties"+" could not load properties from path:"+location+"," +
                        ""+e.getMessage());
            }finally {
                IOUtils.closeQuietly(reader);
            }
        }
        return properties;

    }

    public String getValue(String key){

        String systemgValue =System.getProperty(key);

        if (systemgValue != null) {
            return systemgValue;
        }

        if (properties.containsKey(key)){
            return  properties.getProperty(key);
        }

        return "";
    }

}
