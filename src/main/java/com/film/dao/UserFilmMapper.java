package com.film.dao;

import com.film.model.UserFilm;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;
@Repository
public interface UserFilmMapper extends Mapper<UserFilm> {
}