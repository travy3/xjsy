package com.zyu.xjsy.common.persistence;

import com.zyu.xjsy.common.util.IdGen;
import com.zyu.xjsy.modules.sys.entity.User;
import com.zyu.xjsy.modules.sys.util.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import java.util.Date;

/**
 * 数据Entity
 * Created by chenjie on 2016/2/18.
 */
public abstract class DataEntity<T> extends BaseEntity<T> {

    private static final long serialVersionUID = 1L;

    protected String remarks;	// 备注
    protected User createBy;	// 创建者
    protected Date createDate;	// 创建日期
    protected User updateBy;	// 更新者
    protected Date updateDate;	// 更新日期
    protected String delFlag; 	// 删除标记（0：正常；1：删除；2：审核）

    public DataEntity(){
        super();
        this.delFlag = DEL_FLAG_NORMAL;
    }

    public DataEntity(String id){

        super(id);
        this.delFlag = DEL_FLAG_NORMAL;
    }

    /**
     * 插入之前执行方法，需要手动调用
     */
    @Override
    public void preInsert() {
        if (!this.isNewRecord) {
            setId(IdGen.uuid());
        }
        User user = UserUtils.getUser();
        if (StringUtils.isNotBlank(user.getId())){
            this.updateBy = user;
            this.createBy = user;
        }
        this.updateDate = new Date();
        this.createDate = this.updateDate;
    }

    /**
     * 更新之前执行方法，需要手动调用
     */
    @Override
    public void preUpdate(){
        User user = UserUtils.getUser();
        if (StringUtils.isNotBlank(user.getId())){
            this.updateBy = user;
        }
        this.updateDate = new Date();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Length(min=0, max=255)
    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public User getCreateBy() {
        return createBy;
    }

    public void setCreateBy(User createBy) {
        this.createBy = createBy;
    }


    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public User getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(User updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * 删除标记（0：正常；1：删除；2：审核；）
     */
    public static final String DEL_FLAG_NORMAL = "0";
    public static final String DEL_FLAG_DELETE = "1";
    public static final String DEL_FLAG_AUDIT = "2";
}
