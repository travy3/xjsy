package com.zyu.xjsy.modules.sys.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.sys.entity.Business;

/**
 * Created by travy on 2016/3/26.
 */
@MyBatisDao
public interface BusinessDao extends CrudDao<Business> {
}
