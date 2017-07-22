package com.film.dao;

import com.film.model.Film;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Repository
public interface FilmMapper extends Mapper<Film> {

    // 查询电影详情
    List<Film> selectFilmAndTypesInfo1(Film film);

    // 列表
    List<Film> selectFilmAndTypesInfo2(Film film);

    // 查询电影名
    int testFileName(String name);
}