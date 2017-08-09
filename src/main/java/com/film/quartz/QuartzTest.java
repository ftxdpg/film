package com.film.quartz;

import com.alibaba.fastjson.JSON;
import com.film.dao.FilmMapper;
import com.film.model.Film;
import com.film.service.JedisClient;
import com.film.util.PageUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/9.
 * 作用：定时器
 */
public class QuartzTest {

    @Autowired
    JedisClient jedisClient;

    @Autowired
    private FilmMapper filmMapper;

    public void quartz(){
        try {
            // 删除置顶的5条电影
            jedisClient.del("topFive");
            // 删除中间的8条电影
            jedisClient.del("onNow");
            // 放入置顶的5条电影
            List<Film> films = filmMapper.selectTopFilms(new PageUtil(0,6));
            // 放入置顶的8条电影
            List<Film> onNows = filmMapper.selectTopFilms(new PageUtil(0,8));
            //把list转换成字符串
            String topFilms = JSON.toJSONString(films);
            jedisClient.set("topFive", topFilms);
            //把list转换成字符串
            String onNow = JSON.toJSONString(onNows);
            jedisClient.set("onNow", onNow);
        } catch (Exception e) {
            try {
                e.printStackTrace();
                // 如果报错，就删了缓存的信息
                String s = jedisClient.get("onNow");
                if (!StringUtils.isBlank(s)) {
                    jedisClient.del("onNow");
                }
                String ss = jedisClient.get("topFive");
                if (!StringUtils.isBlank(ss)) {
                    jedisClient.del("topFive");
                }
            } catch (Exception e1){
                e1.printStackTrace();
            }
        }
    }

    public void test(){
        System.out.println("yes");
    }
}
