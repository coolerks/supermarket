package com.coderman.common.model.system;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_login_log")
public class LoginLog {
    @Id
    private Long id;

    private String username;

    private Date loginTime;

    private String location;

    private String ip;

    /**
     * 操作系统
     */
    private String userSystem;

    /**
     * 浏览器
     */
    private String userBrowser;

}
