package com.coderman.common.vo.business;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
@Data
public class ConsumerVO {


    private Long id;

    @NotBlank(message = "商品出库地点不能为空")
    private String name;

    @NotBlank(message = "省市县不能为空")
    private String address;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date modifiedTime;

    @NotBlank(message = "联系人电话不能为空")
    private String phone;

    @NotNull(message = "排序号不能为空")
    private  Integer sort;

    @NotBlank(message = "联系人姓名不能为空")
    private String contact;

}
