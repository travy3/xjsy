package com.zyu.xjsy.modules.cus.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.cus.dao.HpManagerDao;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.util.List;

/**
 * Created by chenjie on 2016/5/6.
 */
@Service
@Transactional(readOnly = true,rollbackFor = Exception.class)
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

        }
    }

    public boolean checkNextIsExist(HpManager hpManager) {
        Assert.notNull(hpManager);
        hpManager.setNo(hpManager.getNo()+1);
        HpManager manager = hpManagerDao.getNextNo(hpManager);
        if (manager!=null){
            return false;
        }
        return true;
    }
}
