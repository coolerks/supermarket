package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_out_stock")
public class OutStock {

    @Id
    private Long id;
    /**
     * 出库单号。
     */
    private String outNum;

    /**
     * 出库类型：0:直接出库,1:审核出库。
     */
    private int type;

    /**
     * 操作人员。
     */
    private String operator;

    /**
     * 出库时间。
     */
    private Date createTime;

    /**
     * 出库总数。
     */
    private int productNumber;

    /**
     * 消费者ID。
     */
    private long consumerId;

    /**
     * 备注。
     */
    private String remark;

    /**
     * 状态:0:正常入库,1:已进入回收,2:等待审核。
     */
    private int status;

    /**
     * 紧急程度:1:不急,2:常规,3:紧急,4:特急。
     */
    private int priority;

}
