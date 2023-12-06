package com.coderman.common.vo.business;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@Data
public class OutStockDetailVO {

    private String outNum;

    private Integer status;

    private Integer type;

    private String operator;

    private ConsumerVO consumerVO;

    private long total;
    /**
     * 总数
     **/

    private List<OutStockItemVO> itemVOS = new ArrayList<>();

}
