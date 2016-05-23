package com.zyu.xjsy.modules.cus.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.cus.dao.HpManagerDao;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenjie on 2016/5/6.
 */
@Service
public class HpManagerService extends BaseService {


    @Autowired
    private HpManagerDao hpManagerDao;


    public PageInfo<HpManager> findByCid(PageInfo pageInfo , HpManager hpManager) {

        hpManager.setPageInfo(pageInfo);

        List<HpManager> list = hpManagerDao.findList(hpManager);

        pageInfo.setList(list);

        return pageInfo;
    }
}
