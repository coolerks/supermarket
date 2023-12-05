package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_supplier")
public class Supplier {

    @Id
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 供应商名称。
     */
    private String name;

    /**
     * 供应商地址。
     */
    private String address;

    /**
     * 供应商邮箱。
     */
    private String email;

    /**
     * 供应商电话。
     */
    private String phone;

    /**
     * 创建时间。
     */
    private Date createTime;

    /**
     * 修改时间。
     */
    private Date modifiedTime;

    /**
     * 排序。
     */
    private Integer sort;

    /**
     * 联系人。
     */
    private String contact;

}
