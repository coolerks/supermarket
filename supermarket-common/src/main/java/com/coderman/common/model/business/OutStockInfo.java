package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_out_stock_info")
public class OutStockInfo {

    @Id
    private Long id;

    /**
     * 出库单号。
     */
    private String outNum;

    /**
     * 商品编号。
     */
    private String pNum;

    /**
     * 数量。
     */
    private Integer productNumber;

    /**
     * 创建时间。
     */
    private Date createTime;

    /**
     * 修改时间。
     */
    private Date modifiedTime;

}
