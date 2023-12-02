package com.coderman.common.vo.business;

import lombok.Data;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
@Data
public class InStockItemVO {
    private Long id;

    private String pNum;

    private String name;

    private String model;

    private String unit;

    private String imageUrl;

    private int count;
}
