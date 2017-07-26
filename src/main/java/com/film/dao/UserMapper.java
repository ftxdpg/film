package com.film.dao;

import com.film.model.Film;
import com.film.model.User;
import com.film.model.UserFilm;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface UserMapper extends Mapper<User> {
    // 是否有相同的昵称
    int selectByName(String name);

    // 是否有相同的邮箱
    int selectByEmail(String email);

    // 是否有相同的手机号
    int selectByPhone(String phone);

    // 用户与电影的收藏关系查询
    List<User> selectUserFilm(UserFilm userFilm);
}