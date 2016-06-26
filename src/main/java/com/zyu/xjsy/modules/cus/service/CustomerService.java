package com.zyu.xjsy.modules.cus.service;

import com.google.common.collect.Lists;
import com.zyu.xjsy.common.config.Global;
import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.modules.cus.dao.CustomerDao;
import com.zyu.xjsy.modules.cus.dao.HpManagerDao;
import com.zyu.xjsy.modules.cus.entity.Customer;
import com.zyu.xjsy.modules.cus.entity.HpManager;
import com.zyu.xjsy.modules.info.dao.PlanInfoDao;
import com.zyu.xjsy.modules.info.entity.Plan;
import com.zyu.xjsy.modules.info.entity.PlanInfo;
import com.zyu.xjsy.modules.sys.entity.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by chenjie on 2016/4/13.
 */
@Service
public class CustomerService extends BaseService {


    @Autowired
    private CustomerDao customerDao;

    @Autowired
    private HpManagerDao hpManagerDao;


    @Autowired
    private PlanInfoDao planInfoDao;

    public PageInfo<Customer> findAllCustomer(PageInfo pageInfo, Customer customer, User user) {

        List<Customer> customerList = Lists.newArrayList();

        customer.setPageInfo(pageInfo);
        customer.setUser(user);

        customerList = customerDao.findList(customer);

        pageInfo.setList(customerList);

        return pageInfo;

    }

    public Customer getCustomer(Customer customer) {
        return customerDao.get(customer);
    }

    public Customer getCustomerById(String id){
        return customerDao.getById(id);
    }

    @Transactional(readOnly = false)
    public void saveCustomer(Customer customer) {

        if (StringUtils.isBlank(customer.getId())){

            customer.preInsert();
            customerDao.insert(customer);

        }else {

            customer.preUpdate();
            customerDao.update(customer);

        }

    }

    /**
     *  根据方案生成客户的治疗记录
     * @param customer
     * @param plan
     * @param planInfo
     */
    @Transactional(readOnly = false)
    public void creatCusHpManage(Customer customer , Plan plan , PlanInfo planInfo) {


        //查询对应planinfo

        List<PlanInfo> planInfoList = Lists.newArrayList();

        planInfoList = planInfoDao.findList(planInfo);

        //遍历插入hpmanager

       HpManager hpManagerTmp = hpManagerDao.getMaxNo(customer);

        int maxNo = 0;

        if (planInfoList != null && planInfoList.size() > 0){
            for (PlanInfo info : planInfoList){

                HpManager hpManager = new HpManager();

                hpManager.preInsert();

                hpManager.setPlan(plan);

                hpManager.setCode(info.getCode());

                hpManager.setPaper(info.getPaper());

                hpManager.setTimes(info.getTimes());

                hpManager.setCustomer(customer);

                //设置次数 累加
                if (hpManagerTmp != null){
                    maxNo = hpManagerTmp.getNo();
                }

                hpManager.setNo(maxNo+info.getNum());

                hpManagerDao.insert(hpManager);
            }
        }

        if (Global.DURATION_SY.equals(customer.getDuration())){
            //如果试用客户，状态更新
            customer.preUpdate();

            customer.setDuration(Global.DURATION_ZL);

            customer.setPlan(plan);


            customerDao.update(customer);
        }

    }

    public List<Map> getIncCusByMonth(Customer customer){

        return customerDao.countIncCusByMonth(customer);
    }


}
