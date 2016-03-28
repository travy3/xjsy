package com.zyu.xjsy.modules.sys.service;

import com.zyu.xjsy.common.persistence.PageInfo;
import com.zyu.xjsy.common.security.Digests;
import com.zyu.xjsy.common.service.BaseService;
import com.zyu.xjsy.common.service.ServiceException;
import com.zyu.xjsy.common.util.Encodes;
import com.zyu.xjsy.modules.sys.dao.BusinessDao;
import com.zyu.xjsy.modules.sys.dao.MenuDao;
import com.zyu.xjsy.modules.sys.dao.RoleDao;
import com.zyu.xjsy.modules.sys.dao.UserDao;
import com.zyu.xjsy.modules.sys.entity.Business;
import com.zyu.xjsy.modules.sys.entity.Menu;
import com.zyu.xjsy.modules.sys.entity.Role;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by travy on 2016/3/4.
 */
@Service
@Transactional(readOnly = true)
public class SystemService extends BaseService {

    public static final String HASH_ALGORITHM = "SHA-1";
    public static final int HASH_INTERATIONS = 1024;
    public static final int SALT_SIZE = 8;

    @Autowired
    private MenuDao menuDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private BusinessDao businessDao;

    @Autowired
    private RoleDao roleDao;


    /********************菜单*************************/
    public List<Menu> findAllMenu(){

        return menuDao.findAllList(new Menu());

    }

    /*********************用户************************/
    public PageInfo<User> findAllUser(PageInfo pageInfo,User user) {

        // 设置分页参数
        user.setPageInfo(pageInfo);

        // 执行分页查询
        pageInfo.setList(userDao.findList(user));

        return pageInfo;

    }

    /**
     * 根据登录名获取用户
     * @param loginName
     * @return
     */
    public User getUserByLoginName(String loginName) {
        return UserUtils.getByLoginName(loginName);
    }

    @Transactional(readOnly = false)
    public void saveUser(User user) {
        if(StringUtils.isBlank(user.getId())){
            user.preInsert();
            userDao.insert(user);
        }else {
            // 更新用户数据
            user.preUpdate();
            userDao.update(user);
        }
        if (StringUtils.isNotBlank(user.getId())){
            userDao.deleteUserRole(user);
            if (user.getRoleList()!= null && user.getRoleList().size() > 0){
                userDao.insertUserRole(user);
            }else {
                throw new ServiceException(user.getLoginName() + "没有设置角色！");
            }
        }
    }

    public User getUser(User user){
//        return UserUtils.get(user.getId());
        return userDao.get(user);
    }

    /**********************加盟商信息***********************/

    public List<Business> findAllBusiness(Business business){
        return businessDao.findAllList(business);
    }

    /**********************加盟商信息***********************/

    public List<Role> findAllRole(Role role){
        return roleDao.findAllList(role);
    }


    /**********************其他***********************/
    /**
     * 生成安全的密码，生成随机的16位salt并经过1024次 sha-1 hash
     */
    public static String entryptPassword(String plainPassword) {
        byte[] salt = Digests.generateSalt(SALT_SIZE);
        byte[] hashPassword = Digests.sha1(plainPassword.getBytes(), salt, HASH_INTERATIONS);
        return Encodes.encodeHex(salt)+Encodes.encodeHex(hashPassword);
    }


}
