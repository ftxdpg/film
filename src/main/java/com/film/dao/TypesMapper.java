package com.film.dao;

import com.film.model.Film;
import com.film.model.Types;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface TypesMapper extends Mapper<Types> {
    List<Film> selectTypes(@Param("page") Integer page, @Param("size") Integer size, @Param("contry")String contry, @Param("createtime")String createtime, @Param("typeName")String typeName);

    Integer selectTypeCounts(@Param("contry")String contry, @Param("createtime")String createtime, @Param("typeName")String typeName);
}