package com.gulimall.coupon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * 使用 Nacos作为配置中心统一管理配置
 * 1. 引入依赖
 * 2. 创建一个 bootstrap.properties
 * 1)当前应用的名字
 * 2)配置中心的服务地址
 * 3.个配置中心默认添加一个数据集（Data Id)。 默认规则是 应用名.properties
 * 4.给 应用名.properties 添加配置
 * 5.动态获取配置
 * 2) @RefreshScope    :动态获取并刷新配置
 * 3) @Value(${配置名}) :获取配置中的值
 * 如果配置中心和当前应用的配置文件中有相同的配置项， 优先使用配置中心的项
 * <p>
 * 细节
 * 1. 命名空间： 配置隔离
 * 默认是：public（保留空间）；默认新增配置都在public 空间中
 * 通过修改 bootstrap.properties 中的config.namespace 来选择要使用的命名空间下的配置； 使用uuid
 * eg: 可以用来隔离配置，也可以用来区分各个服务
 * 2. 配置集：所有配置的集合
 * 3. 配置集ID： 类似文件名
 * Data Id
 * 4. 配置分组：
 * 默认所有的配置集都属于 DEFAULT_GROUP
 * 通过修改 bootstrap.properties 中的config.group 来选择； 使用组名
 * <p>
 * 本项目中，每隔微服务创建自己的命名空间，使用配置分组区分环境， dev,test,prod
 * <p>
 * 5. 同时加载多个配置集
 * 1）微服务任何配置信息，任何配置文件都可以放在配置中心中
 * 2）只需要在bootstrap.properties 中说明加载配置中心的那些配置文件即可
 * 3）@Value， @ConfiguratProperties......
 * 以前SpringBoot任何方法从配置文件中获取值，都能用
 * 配置中心有的优先使用配置中心的
 */

@SpringBootApplication
@EnableDiscoveryClient
public class GulimallCouponApplication {

    public static void main(String[] args) {
        SpringApplication.run(GulimallCouponApplication.class, args);
    }

}
