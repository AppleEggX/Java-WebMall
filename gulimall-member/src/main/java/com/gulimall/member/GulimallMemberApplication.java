package com.gulimall.member;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * 若要远程调用别的服务
 * 1. 引用 open-feign
 * 2. 编写一个接口，告诉SpringCloud这个接口需要调用远程服务
 * 1) 声明接口的每一个方法是调用哪一个远程服务的哪一个请求
 * 3. 开启远程调用功能
 */
@EnableFeignClients(basePackages = "com.gulimall.member.feign")
@SpringBootApplication
@EnableDiscoveryClient
public class GulimallMemberApplication {

    public static void main(String[] args) {
        SpringApplication.run(GulimallMemberApplication.class, args);
    }

}
