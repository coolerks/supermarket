package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Health;
import com.coderman.common.vo.business.HealthVO;
import com.coderman.common.vo.system.PageVO;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
public interface HealthService {

    /**
     * 每日打卡
     * @param healthVO
     */
    void report(HealthVO healthVO) throws BusinessException;

    /**
     * 今日是否已经打卡
     * @param id
     * @return
     */
    Health isReport(Long id);

    /**
     * 汇报记录
     * @return
     */
    PageVO<Health> history(Long id, Integer pageNum, Integer pageSize);
}
