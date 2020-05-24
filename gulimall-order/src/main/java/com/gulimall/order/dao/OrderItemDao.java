package com.gulimall.order.dao;

import com.gulimall.order.entity.OrderItemEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单项信息
 * 
 * @author Shawn
 * @email agxiao123@gmail.com
 * @date 2020-05-24 15:04:30
 */
@Mapper
public interface OrderItemDao extends BaseMapper<OrderItemEntity> {
	
}
