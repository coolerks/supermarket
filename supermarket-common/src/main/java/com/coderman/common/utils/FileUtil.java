package com.coderman.common.utils;



import com.coderman.common.properties.ObjectStorage;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.http.HttpProtocol;
import com.qcloud.cos.model.ObjectMetadata;
import com.qcloud.cos.region.Region;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.UUID;


/**
  * @Date 2023年12月 * @Version 1.0
 **/
@Component
public class FileUtil {
    private final Logger logger = LoggerFactory.getLogger(FileUtil.class);
    private final COSClient cosClient;
    private final ObjectStorage objectStorage;


    /**
     *	MultipartFile类型的文件上传ַ
     * @param file
     * @return
     * @throws IOException
     */
    public String uploadFile(MultipartFile file) throws IOException {
        String path = getFilePath(Objects.requireNonNull(file.getOriginalFilename()));
        cosClient.putObject(objectStorage.getBucket(), path, file.getInputStream(), new ObjectMetadata());
        return getResAccessUrl(path);
    }



    /**
     * 返回文件上传成功后的地址名称ַ
     * @param storePath
     * @return
     */
    private String getResAccessUrl(String storePath) {
       return  objectStorage.getDomain() + storePath;
    }

    public String upfileImage(InputStream is, long size, String fileExtName, Object metaData) {
        String path = getFilePath(fileExtName);
        cosClient.putObject(objectStorage.getBucket(), path, is, new ObjectMetadata());
        return getResAccessUrl(path);
    }


    public FileUtil(ObjectStorage objectStorage) {
        COSCredentials cred = new BasicCOSCredentials(objectStorage.getAccessKey(), objectStorage.getSecretKey());
        ClientConfig clientConfig = new ClientConfig();
        clientConfig.setRegion(new Region(objectStorage.getEndpoint()));
        clientConfig.setHttpProtocol(HttpProtocol.https);
        clientConfig.setSocketTimeout(30 * 1000);
        clientConfig.setConnectionTimeout(30 * 1000);
        clientConfig.setHttpProxyPort(80);
        this.cosClient = new COSClient(cred, clientConfig);
        this.objectStorage = objectStorage;
    }

    public static String getFilePath(String name) {
        String[] split = name.split("\\.");
        return new SimpleDateFormat("yyyy/MM/dd/").format(new Date()) +
                UUID.randomUUID().toString().replace("-", "") + "." + split[split.length - 1];
    }
}



