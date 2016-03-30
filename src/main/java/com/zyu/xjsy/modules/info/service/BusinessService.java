package com.zyu.xjsy.modules.info.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.info.dao.BusinessDao;
import com.zyu.xjsy.modules.info.entity.Business;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by travy on 2016/3/30.
 */
@Service
public class BusinessService extends BaseService {

    @Autowired
    private BusinessDao businessDao;


    /**********************加盟商信息***********************/

    /**
     * 带分页
     * @param pageInfo
     * @param business
     * @return
     */
    public PageInfo<Business> findAllBusiness(PageInfo pageInfo, Business business){

        business.setPageInfo(pageInfo);

        List<Business> businessList = businessDao.findAllList(business);

        pageInfo.setList(businessList);

        return pageInfo;
    }

    /**
     * 不带分页
     * @param business
     * @return
     */
    public List<Business> findAllBusiness(Business business){
        List<Business> businessList = businessDao.findAllList(business);
        return businessList;
    }
}
