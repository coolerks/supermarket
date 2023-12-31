package com.coderman.business.mapper;


import com.coderman.common.model.business.ProductStock;
import com.coderman.common.vo.business.ProductStockVO;
import com.coderman.common.vo.business.ProductVO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@org.apache.ibatis.annotations.Mapper
public interface ProductStockMapper extends Mapper<ProductStock> {

    /**
     * 库存列表
     *
     * @param productVO
     * @return
     */
    List<ProductStockVO> findProductStocks(ProductVO productVO);

    /**
     * 库存信息(饼图使用)
     *
     * @return
     */
    List<ProductStockVO> findAllStocks(ProductVO productVO);
}
