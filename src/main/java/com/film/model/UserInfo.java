package com.film.model;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/27.
 * 作用：存储用户信息的所有信息
 */
public class UserInfo {
    // 用户与购物车
    private List<Car> cars;

    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
    }
}
