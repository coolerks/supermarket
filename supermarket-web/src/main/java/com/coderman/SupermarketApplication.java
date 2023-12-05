package com.coderman;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import tk.mybatis.spring.annotation.MapperScan;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
@SpringBootApplication()
@EnableTransactionManagement  //开启事务管理
@MapperScan("com.coderman.*.mapper") //扫描mapper
public class SupermarketApplication {
    public static void main(String[] args) {
        SpringApplication.run(SupermarketApplication.class,args);
    }
}
