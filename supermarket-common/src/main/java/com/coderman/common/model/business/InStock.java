package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_in_stock")
public class InStock {


    /**
     * 唯一标识符。
     */
    @Id
    private Long id;

    /**
     * 入库单编号。
     */
    private String inNum;

    /**
     * 类型：1：捐赠，2：下拨，3：采购, 4: 退货入库。
     */
    private Integer type;

    /**
     * 操作人员。
     */
    private String operator;

    /**
     * 入库单创建时间。
     */
    private Date createTime;

    /**
     * 入库单修改时间。
     */
    private Date modified;

    /**
     * 商品总数。
     */
    private Integer productNumber;

    /**
     * 来源的唯一标识符。
     */
    private Long supplierId;

    /**
     * 描述信息。
     */
    private String remark;

    /**
     * 状态 (0: 正常入库单, 1: 已进入回收, 2: 等待审核)。
     */
    private Integer status;
}
