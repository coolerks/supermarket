package com.coderman.business.service;


import com.coderman.common.model.business.Consumer;
import com.coderman.common.vo.business.ConsumerVO;
import com.coderman.common.vo.system.PageVO;

import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
public interface ConsumerService {

    /**
     * 添加商品去向
     *
     * @param consumerVO
     */
    Consumer add(ConsumerVO consumerVO);


    /**
     * 商品去向列表
     *
     * @param pageNum
     * @param pageSize
     * @param consumerVO
     * @return
     */
    PageVO<ConsumerVO> findConsumerList(Integer pageNum, Integer pageSize, ConsumerVO consumerVO);


    /**
     * 编辑商品去向
     *
     * @param id
     * @return
     */
    ConsumerVO edit(Long id);

    /**
     * 更新商品去向
     *
     * @param id
     * @param consumerVO
     */
    void update(Long id, ConsumerVO consumerVO);

    /**
     * 删除商品去向
     *
     * @param id
     */
    void delete(Long id);

    /**
     * 查询所有商品去向
     *
     * @return
     */
    List<ConsumerVO> findAll();

}
