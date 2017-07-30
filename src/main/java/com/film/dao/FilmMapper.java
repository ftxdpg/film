package com.film.dao;

import com.film.model.Film;
import com.film.util.PageUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface FilmMapper extends Mapper<Film> {

    // 查询电影详情
    List<Film> selectFilmAndTypesInfo1(Film film);

    // 列表
    List<Film> selectFilmAndTypesInfo2(Film film);

    // 查询电影名
    int testFileName(String name);

    // 5条置顶电影
    List<Film> selectTopFilms(PageUtil pageUtil);

    // 多条件查询
    List<Film> selectByTypes(@Param("contry")String contry, @Param("createtime")String createtime, @Param("typeId")Integer typeId);
}