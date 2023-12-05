package com.coderman.common.model.system;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_log")
public class Log {

    @Id
    private Long id;

    /**
     * 用户
     */
    private String username;

    /**
     * 耗时
     */
    private Long time;

    private String ip;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /**
     * 地区
     */
    private String location;

    /**
     * 操作内容
     */
    private String operation;

    /**
     * 处理方法-全类名
     */
    private String method;

    /**
     * 方法参数
     */
    private String params;
}
