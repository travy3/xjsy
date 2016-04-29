package com.zyu.xjsy.common.security.shiro.session;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.CachingSessionDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;
import java.util.Collection;

/**
 * Created by chenjie on 2016/4/29.
 */
public class JedisSessionDAO extends CachingSessionDAO {

    private static Logger logger = LoggerFactory.getLogger(JedisSessionDAO.class);


    private String sessionKeyPrefix = "JedisSession";


    @Override
    protected Serializable doCreate(Session session) {



        return null;
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {
        return null;
    }

    @Override
    public void update(Session session) throws UnknownSessionException {

    }

    @Override
    protected void doUpdate(Session session) {

    }

    @Override
    public void delete(Session session) {

    }

    @Override
    protected void doDelete(Session session) {

    }

    @Override
    public Collection<Session> getActiveSessions() {
        return null;
    }

    public String getSessionKeyPrefix() {
        return sessionKeyPrefix;
    }

    public void setSessionKeyPrefix(String sessionKeyPrefix) {
        this.sessionKeyPrefix = sessionKeyPrefix;
    }
}
