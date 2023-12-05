package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_product")
public class Product {

    @Id
    private Long id;
    /**
     * 商品编号。
     */
    private String productNum;

    /**
     * 商品名称。
     */
    private String name;

    /**
     * 图片URL。
     */
    private String imageUrl;

    /**
     * 规格型号。
     */
    private String model;

    /**
     * 计算单位。
     */
    private String unit;

    /**
     * 备注。
     */
    private String remark;

    /**
     * 排序。
     */
    private int sort;

    /**
     * 创建时间。
     */
    private Date createTime;

    /**
     * 修改时间。
     */
    private Date modifiedTime;

    /**
     * 1级分类ID。
     */
    private long oneCategoryId;

    /**
     * 2级分类ID。
     */
    private long twoCategoryId;

    /**
     * 3级分类ID。
     */
    private long threeCategoryId;

    /**
     * 是否删除:1商品正常,0:商品回收,2:商品审核中。
     */
    private int status;


}
