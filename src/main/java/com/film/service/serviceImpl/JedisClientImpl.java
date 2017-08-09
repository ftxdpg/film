package com.film.service.serviceImpl;

import com.film.service.JedisClient;
import com.film.util.JedisPoolUtil;
import org.springframework.stereotype.Repository;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/9.
 * 作用：
 */
@Repository
public class JedisClientImpl implements JedisClient{

    // 获取
    @Override
    public String get(String value) {
        JedisPool jedisPool = null;
        Jedis jedis = null;
        String result = null;
        try {
            // 获取连接
            jedisPool = JedisPoolUtil.getJedisPool();
            // 获取Jedis
            jedis = jedisPool.getResource();
            // 获取数据
            result = jedis.get(value);
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            JedisPoolUtil.returnJedisSource(jedisPool, jedis);
        }
        return result;
    }

    // 添加
    @Override
    public void set(String key, String value) {
        JedisPool jedisPool = null;
        Jedis jedis = null;
        try {
            // 获取连接
            jedisPool = JedisPoolUtil.getJedisPool();
            // 获取Jedis
            jedis = jedisPool.getResource();
            // 添加数据
            jedis.set(key, value);
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            JedisPoolUtil.returnJedisSource(jedisPool, jedis);
        }
    }

    // 删除
    @Override
    public void del(String key) {
        JedisPool jedisPool = null;
        Jedis jedis = null;
        try {
            // 获取连接
            jedisPool = JedisPoolUtil.getJedisPool();
            // 获取Jedis
            jedis = jedisPool.getResource();
            // 删除数据
            jedis.del(key);
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            JedisPoolUtil.returnJedisSource(jedisPool, jedis);
        }
    }
}
