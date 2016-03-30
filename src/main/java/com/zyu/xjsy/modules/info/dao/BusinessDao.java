package com.zyu.xjsy.modules.info.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.info.entity.Business;
import com.zyu.xjsy.modules.sys.entity.User;

/**
 * Created by travy on 2016/3/30.
 */
@MyBatisDao
public interface BusinessDao extends CrudDao<Business> {
    Business getByUser(User user);
}
