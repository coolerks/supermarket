package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_in_stock_info")
public class InStockInfo {

    @Id
    private Long id;

    /**
     * 入库单编号。
     */
    private String inNum;

    /**
     * 商品编号。
     */
    private String productNum;

    /**
     * 数量。
     */
    private int productNumber;

    /**
     * 创建时间。
     */
    private Date createTime;

    /**
     * 修改时间。
     */
    private Date modifiedTime;

}
