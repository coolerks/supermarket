package com.coderman.system.util;

import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
public class MD5Utils {
    /**
     * 密码加密
     *
     * @return
     */
    public static String md5Encryption(String source, String salt) {
        String algorithmName = "MD5";//加密算法
        int hashIterations = 1024;//加密次数
        SimpleHash simpleHash = new SimpleHash(algorithmName, source, salt, hashIterations);
        return simpleHash + "";
    }
}
