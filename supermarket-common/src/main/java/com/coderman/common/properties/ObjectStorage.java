package com.coderman.common.properties;

import lombok.Data;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ToString
@ConfigurationProperties(prefix = "files")
public class ObjectStorage {
    /**
     * 访问密钥
     */
    private String accessKey;
    /**
     * 密钥
     */
    private String secretKey;
    /**
     * 访问节点
     */
    private String endpoint;
    /**
     * 存储桶
     */
    private String bucket;
    /**
     * 自定义域名
     */
    private String domain;

}
