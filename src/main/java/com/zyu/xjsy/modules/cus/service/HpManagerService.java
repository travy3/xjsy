package com.zyu.xjsy.modules.cus.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.cus.dao.HpManagerDao;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by chenjie on 2016/5/6.
 */
@Service
@Transactional(readOnly = true)
public class HpManagerService extends BaseService {


    @Autowired
    private HpManagerDao hpManagerDao;


    public PageInfo<HpManager> findByCid(PageInfo pageInfo , HpManager hpManager) {

        hpManager.setPageInfo(pageInfo);

        List<HpManager> list = hpManagerDao.findList(hpManager);

        pageInfo.setList(list);

        return pageInfo;
    }

    @Transactional(readOnly = false)
    public void saveHpManager(HpManager hpManager) {

        if (StringUtils.isBlank(hpManager.getId())){
            hpManager.preInsert();
            hpManagerDao.insert(hpManager);
        }else {
            hpManager.preUpdate();
            hpManagerDao.update(hpManager);
            if (hpManager.getNo()==30){
//                hp
            }
        }
    }
}
