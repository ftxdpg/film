package com.film.service;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/9.
 * 作用：Jedis的Dao操作类
 */
public interface JedisClient {
    // hash取出
    String get(String key);

    // hash插入
    void set(String key, String value);

    // hash删除
    void del(String key);
}
