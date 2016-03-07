package com.zyu.xjsy.modules.sys.service;

import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.sys.dao.MenuDao;
import com.zyu.xjsy.modules.sys.entity.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by travy on 2016/3/4.
 */
@Service
public class SystemService extends BaseService {

    @Autowired
    private MenuDao menuDao;


    public List<Menu> findAllMenu(){

        return menuDao.findAllList(new Menu());

    }


}
