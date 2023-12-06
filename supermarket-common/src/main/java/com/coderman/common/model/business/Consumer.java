package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "biz_consumer")
@Data
public class Consumer {

    @Id
    @GeneratedValue(generator = "JDBC")
    private Long id;

    /**
     * 商品消费方
     */
    private String name;

    /**
     * 地址
     */
    private String address;


    private Date createTime;

    private Date modifiedTime;

    private String phone;

    /**
     * 排序
     */
    private Integer sort;

    /**
     * 联系人姓名
     */
    private String contact;
}
