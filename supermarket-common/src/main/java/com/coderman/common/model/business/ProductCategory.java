package com.coderman.common.model.business;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "biz_product_category")
public class ProductCategory {
    @Id
    private Long id;
    /**
     * 类别名称。
     */
    private String name;

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
     * 父级分类ID。
     */
    private long parentId;

}
