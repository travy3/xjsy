package com.zyu.xjsy.common.security.shiro.session;

import com.google.common.collect.Sets;
import com.zyu.xjsy.common.util.DateUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

/**
 * Created by chenjie on 2016/3/29.
 */
public class CacheSessionDAO extends EnterpriseCacheSessionDAO implements SessionDao {

    private Logger logger = LoggerFactory.getLogger(getClass());

    public CacheSessionDAO() {
        super();
    }


    @Override
    protected Serializable doCreate(Session session) {


        return super.doCreate(session);
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {
        return super.doReadSession(sessionId);
    }

    @Override
    protected void doUpdate(Session session) {
        super.doUpdate(session);
    }

    @Override
    protected void doDelete(Session session) {
        super.doDelete(session);
    }

    @Override
    public Collection<Session> getActiveSessions(boolean includeLeave) {
        return getActiveSessions(includeLeave,null,null);
    }

    /**
     * 获取活动会话
     * @param includeLeave 是否包括离线（最后访问时间大于3分钟为离线会话）
     * @param principal 根据登录者对象获取活动会话
     * @param filterSession 不为空，则过滤掉（不包含）这个会话。
     * @return
     */
    @Override
    public Collection<Session> getActiveSessions(boolean includeLeave, Object principal, Session filterSession) {
        // 如果包括离线，并无登录者条件。
        if (includeLeave && principal == null){
            return getActiveSessions();
        }
        Set<Session> sessions = Sets.newHashSet();
        for (Session session : getActiveSessions()){
            boolean isActiveSession = false;
            // 不包括离线并符合最后访问时间小于等于3分钟条件。
            if (includeLeave || DateUtils.pastMinutes(session.getLastAccessTime()) <= 3){
                isActiveSession = true;
            }
            // 符合登陆者条件。
            if (principal != null){
                PrincipalCollection pc = (PrincipalCollection)session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
                if (principal.toString().equals(pc != null ? pc.getPrimaryPrincipal().toString() : StringUtils.EMPTY)){
                    isActiveSession = true;
                }
            }
            // 过滤掉的SESSION
            if (filterSession != null && filterSession.getId().equals(session.getId())){
                isActiveSession = false;
            }
            if (isActiveSession){
                sessions.add(session);
            }
        }
        return sessions;
    }
}
