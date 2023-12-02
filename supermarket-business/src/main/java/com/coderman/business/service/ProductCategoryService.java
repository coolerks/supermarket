package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.vo.business.ProductCategoryTreeNodeVO;
import com.coderman.common.vo.business.ProductCategoryVO;
import com.coderman.common.vo.system.PageVO;

import java.util.List;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
public interface ProductCategoryService {

    /**
     * 添加商品类别
     * @param ProductCategoryVO
     */
    void add(ProductCategoryVO ProductCategoryVO);


    /**
     * 部门列表
     * @param pageNum
     * @param pageSize
     * @param ProductCategoryVO
     * @return
     */
    PageVO<ProductCategoryVO> findProductCategoryList(Integer pageNum, Integer pageSize, ProductCategoryVO ProductCategoryVO);


    /**
     * 编辑商品类别
     * @param id
     * @return
     */
    ProductCategoryVO edit(Long id);

    /**
     * 更新商品类别
     * @param id
     * @param ProductCategoryVO
     */
    void update(Long id, ProductCategoryVO ProductCategoryVO);

    /**
     * 删除商品类别
     * @param id
     */
    void delete(Long id) throws BusinessException;

    /**
     * 查询所商品类别
     * @return
     */
    List<ProductCategoryVO> findAll();

    /**
     * 分类树形
     * @return
     */
    PageVO<ProductCategoryTreeNodeVO> categoryTree(Integer pageNum, Integer pageSize);

    /**
     * 获取父级分类（2级树）
     * @return
     */
    List<ProductCategoryTreeNodeVO> getParentCategoryTree();

}
