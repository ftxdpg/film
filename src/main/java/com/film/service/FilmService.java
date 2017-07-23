package com.film.service;

import com.film.model.Film;
import com.film.model.Types;
import com.film.util.PageUtil;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/13.
 * 作用：
 */
public interface FilmService extends BaseService<Film> {
    void insert(Film film, String[] types);

    // 电影名唯一性校验
    int testFilmName(String name);

    // 电影列表--异步分页
    PageUtil<Film> getListByAjax(Integer page, Integer size);

    // 修改电影
    void update(Film film, String[] types) throws Exception;
}
