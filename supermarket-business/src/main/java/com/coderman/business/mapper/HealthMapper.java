package com.coderman.business.mapper;

import com.coderman.common.model.business.Health;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@org.apache.ibatis.annotations.Mapper
public interface HealthMapper extends Mapper<Health> {
    /**
     * 今日是否汇报
     *
     * @param id
     * @return
     */
    @Select("select * from biz_health where create_time < (CURDATE()+1) " +
            " and create_time>CURDATE() and user_id=#{id}")
    List<Health> isReport(@Param("id") Long id);
}
