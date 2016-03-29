package com.zyu.xjsy.modules.sys.dao;

import com.zyu.xjsy.common.persistence.CrudDao;
import com.zyu.xjsy.common.persistence.annotation.MyBatisDao;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.User;

import java.util.List;

/**
 * Created by travy on 2016/3/4.
 */
@MyBatisDao
public interface MenuDao extends CrudDao<Menu> {


    List<Menu> findByUser(User user);
}
