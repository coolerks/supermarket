package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.vo.business.OutStockDetailVO;
import com.coderman.common.vo.business.OutStockVO;
import com.coderman.common.vo.system.PageVO;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
public interface OutStockService {

    /**
     * 出库单列表
     *
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    PageVO<OutStockVO> findOutStockList(Integer pageNum, Integer pageSize, OutStockVO outStockVO);

    /**
     * 提交商品出库单
     *
     * @param outStockVO
     */
    void addOutStock(OutStockVO outStockVO) throws BusinessException;

    /**
     * 移入回收站
     *
     * @param id
     */
    void remove(Long id) throws BusinessException;

    /**
     * 恢复出库单
     *
     * @param id
     */
    void back(Long id) throws BusinessException;

    /**
     * 出库单详情
     *
     * @param id
     * @param pageNum
     * @param pageSize
     * @return
     */
    OutStockDetailVO detail(Long id, Integer pageNum, Integer pageSize) throws BusinessException;

    /**
     * 删除出库单
     *
     * @param id
     */
    void delete(Long id) throws BusinessException;

    /**
     * 出库单审核
     *
     * @param id
     */
    void publish(Long id) throws BusinessException;
}
