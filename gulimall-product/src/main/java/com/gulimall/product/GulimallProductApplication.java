package com.gulimall.product;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * 1.整合MyBatis - Plus
 *  1) 导入依赖
 *  2) 配置
 *      1）配置数据源
 *          1.导入数据库的驱动
 *          2.配置数据源 application.yml
  *      2）配置MyBatis - plus
 *          1.使用Map普洱Scan
 *          2.告诉 myBatis-plus sql映射文件位置
 */
@MapperScan("com.gulimall.product.dao")
@SpringBootApplication
@EnableDiscoveryClient
public class GulimallProductApplication {

    public static void main(String[] args) {
        SpringApplication.run(GulimallProductApplication.class, args);
    }

}
