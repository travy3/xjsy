package com.zyu.xjsy.modules.sys.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.sys.entity.User;

/**
 * Created by chenjie on 2016/3/16.
 */
@MyBatisDao
public interface UserDao extends CrudDao<User> {


}
