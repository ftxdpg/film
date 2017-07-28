package com.film.dao;

import com.film.model.Car;
import com.film.model.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/27.
 * 作用：
 */
@Repository
public interface CarMapper extends Mapper<Car> {
    // 查询用户的购物车
    UserInfo selectCars(@Param("page")Integer page, @Param("size")Integer size, @Param("userId")Integer userId);
}
