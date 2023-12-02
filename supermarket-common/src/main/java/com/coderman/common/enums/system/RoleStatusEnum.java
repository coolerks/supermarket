package com.coderman.common.enums.system;

/**
  * @Date 2023年12月 * @Version 1.0
 **/


public enum  RoleStatusEnum {
    DISABLE(0),
    AVAILABLE(1);

    private int statusCode;

    RoleStatusEnum(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }
}
