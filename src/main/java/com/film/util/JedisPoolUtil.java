package com.film.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/9.
 * 作用：JedisPool连接池
 */
public class JedisPoolUtil {
    private static redis.clients.jedis.JedisPool jedisPool = null;

    // 获取连接池连接
    public static redis.clients.jedis.JedisPool getJedisPool(){
        if (jedisPool == null){
            JedisPoolConfig config = new JedisPoolConfig();
            // 连接数
            config.setMaxIdle(30);
            // 空闲数
            config.setMaxIdle(10);
            // 等待时间
            config.setMaxWaitMillis(1500);
            // 在获取连接的时候检查有效性, 默认false
            config.setTestOnBorrow(true);
            jedisPool = new redis.clients.jedis.JedisPool(config, "59.110.220.169", 6379, 8888, "123456");
        }
        return jedisPool;
    }

    // 释放连接回连接池
    public static void returnJedisSource(redis.clients.jedis.JedisPool jedisPool, Jedis jedis){
        if (jedis != null){
            jedisPool.returnResourceObject(jedis);
        }
    }
}
