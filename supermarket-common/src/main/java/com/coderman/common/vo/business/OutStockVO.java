package com.coderman.common.vo.business;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@Data
public class OutStockVO {

    private Long id;

    private String outNum;

    private Integer type;

    private String operator;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Integer productNumber;

    private Integer priority;


    //出库的商品列表
    private List<Object> products = new ArrayList<>();

    private String remark;

    //出库单的状态
    private Integer status;


    /*** 如果consumerId不为空**/

    private Long consumerId;

    //去向名
    private String name;

    //地址
    private String address;

    //联系电话
    private String phone;

    //联系人
    private String contact;

    //排序
    private Integer sort;


}
