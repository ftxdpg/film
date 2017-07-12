package com.film.service;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/11.
 * 作用：通用Service
 */
public interface BaseService<T> {
    // 插入
    void insert(T t);

    // 主键删除
    void deleteByPrimaryKey(Integer id);

    // 主键查询
    void selectByPrimaryKey(Integer id);

    // 主键修改
    void updateByPrimaryKey(T t);

    // 登录
    T login(T t);
}
