package com.film.service;

import com.film.model.Car;
import com.film.util.PageUtil;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/27.
 * 作用：
 */
public interface CarService extends BaseService<Car> {
    // 从购物车移除
    void deleteFromCar(Integer carId) throws Exception;

    // 查询购物车
    PageUtil<Car> selectCars(Integer page, Integer size, Integer userId);

    // 减去一件
    void deleteOne(Car car) throws Exception;

    // 批量删除
    void deleteArrays(Integer[] carIds) throws Exception;
}
