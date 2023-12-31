package com.coderman.common.error;

import lombok.Getter;

/**
 * 业务错误码：返回结果的状态码
 * <p>
 * 如果想要代码更具维护性一点,可以定义不同种类的错误码,都实现 BaseCodeInterface
 *
 * @Date 2023年12月 * @Version 1.0
 **/
@Getter
public enum BusinessCodeEnum implements BaseError {

    //通用的异常以0000开头
    PARAMETER_ERROR(00001, "参数不合法"),

    // 数据操作错误定义
    BODY_NOT_MATCH(400, "请求的数据格式不符!"),
    SIGNATURE_NOT_MATCH(401, "请求的数字签名不匹配!"),
    NOT_FOUND(404, "未找到该资源!"),
    INTERNAL_SERVER_ERROR(500, "服务器内部错误!"),
    SERVER_BUSY(503, "服务器正忙，请稍后再试!"),
    //用户相关：10000**
    USER_ACCOUNT_NOT_FOUND(10001, "账号不存在!"),
    DoNotAllowToDisableTheCurrentUser(10002, "不允许禁用当前用户"),
    //业务异常
    PRODUCT_IS_REMOVE(30001, "商品已移入回收站"),
    PRODUCT_NOT_FOUND(30002, "商品找不到"),
    PRODUCT_WAIT_PASS(30003, "商品等待审核"),
    PRODUCT_STATUS_ERROR(30004, "商品状态错误"),
    PRODUCT_IN_STOCK_NUMBER_ERROR(30005, "商品入库数量非法"),
    PRODUCT_OUT_STOCK_NUMBER_ERROR(30008, "商品出库数量非法"),
    PRODUCT_IN_STOCK_EMPTY(30006, "商品入库不能为空"),
    PRODUCT_OUT_STOCK_EMPTY(30007, "商品出库不能为空"),
    PRODUCT_STOCK_ERROR(30009, "商品库存不足");
    /**
     * 错误码
     */
    private int errorCode;

    /**
     * 错误描述
     */
    private String errorMsg;

    BusinessCodeEnum(int errorCode, String errorMsg) {
        this.errorCode = errorCode;
        this.errorMsg = errorMsg;
    }

    @Override
    public int getErrorCode() {
        return this.errorCode;
    }

    @Override
    public String getErrorMsg() {
        return this.errorMsg;
    }

    @Override
    public BaseError setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
        return this;
    }

}
