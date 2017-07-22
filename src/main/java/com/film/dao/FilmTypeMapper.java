package com.film.dao;

import com.film.model.FilmType;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

@Repository
public interface FilmTypeMapper extends Mapper<FilmType> {
}