package com.coderman.business.converter;


import com.coderman.common.model.business.Consumer;
import com.coderman.common.vo.business.ConsumerVO;
import org.springframework.beans.BeanUtils;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
public class ConsumerConverter {

    /**
     * 转voList
     *
     * @param consumers
     * @return
     */
    public static List<ConsumerVO> converterToVOList(List<Consumer> consumers) {
        List<ConsumerVO> supplierVOS = new ArrayList<>();
        if (!CollectionUtils.isEmpty(consumers)) {
            for (Consumer supplier : consumers) {
                ConsumerVO supplierVO = converterToConsumerVO(supplier);
                supplierVOS.add(supplierVO);
            }
        }
        return supplierVOS;
    }


    /***
     * 转VO
     * @param supplier
     * @return
     */
    public static ConsumerVO converterToConsumerVO(Consumer supplier) {
        ConsumerVO supplierVO = new ConsumerVO();
        BeanUtils.copyProperties(supplier, supplierVO);
        return supplierVO;
    }
}
