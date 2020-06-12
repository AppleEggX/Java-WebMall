package com.gulimall.product.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gulimall.product.entity.CategoryEntity;
import com.gulimall.product.service.CategoryService;
import com.common.utils.PageUtils;
import com.common.utils.R;



/**
 * 商品三级分类
 *
 * @author Shawn
 * @email agxiao123@gmail.com
 * @date 2020-05-24 10:50:54
 */
@RestController
@RequestMapping("product/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    /**
     * 查出所有分类以及子分裂，以属性结构组装起来
     */
    @RequestMapping("/list/tree")
    public R list(){

        List<CategoryEntity> entities = categoryService.listWithTree();


        return R.ok().put("data", entities);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{catId}")
    public R info(@PathVariable("catId") Long catId){
		CategoryEntity category = categoryService.getById(catId);

        return R.ok().put("data", category);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody CategoryEntity category){
		categoryService.save(category);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody CategoryEntity category){
		categoryService.updateById(category);

        return R.ok();
    }

    /**
     * 删除
     * @RequestBody: 获取请求体，只有POST请求有请求体
     * SpringMVC自动将请求体的数据（json）
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] catIds){
//		categoryService.removeByIds(Arrays.asList(catIds));
		categoryService.removeMenuByIds(Arrays.asList(catIds));
        return R.ok();
    }

}
