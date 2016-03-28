package com.zyu.xjsy.modules.sys.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.sys.entity.User;

/**
 * Created by chenjie on 2016/3/16.
 */
@MyBatisDao
public interface UserDao extends CrudDao<User> {


    /**
     * 根据登录名称查询用户
     * @param user
     * @return
     */
    public User getByLoginName(User user);


    void deleteUserRole(User user);

    void insertUserRole(User user);
}
