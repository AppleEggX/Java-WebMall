package com.gulimall.ware.dao;

import com.gulimall.ware.entity.WareSkuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 商品库存
 * 
 * @author Shawn
 * @email agxiao123@gmail.com
 * @date 2020-05-24 15:11:24
 */
@Mapper
public interface WareSkuDao extends BaseMapper<WareSkuEntity> {
	
}
