package com.film.service;

import com.film.model.Film;
import com.film.model.IndexInfo;
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

    // 删除选中
    void removeAll(Integer[] ids) throws Exception;

    // 删除单个
    void deleteOne(Integer id) throws Exception;

    // 置顶电影
    IndexInfo selectTopFilms();

    // 电影类型查询
    PageUtil<Film> selectType(Integer page, Integer size, String[] types);

    // 按名字查询
    List<Film> selectByName(String name);
}
