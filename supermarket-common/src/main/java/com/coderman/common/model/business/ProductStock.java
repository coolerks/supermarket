package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 商品库存
 */
@Data
@Table(name = "biz_product_stock")
public class ProductStock {
    @Id
    private Long id;

    /**
     * 业务主键
     */
    private String pNum;

    /**
     * 剩余库存
     */
    private Long stock;

}
