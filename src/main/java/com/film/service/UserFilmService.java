package com.film.service;

import com.film.model.UserFilm;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/25.
 * 作用：
 */
public interface UserFilmService extends BaseService<UserFilm> {
    // 取消收藏
    void delete(UserFilm userFilm);

    UserFilm select(UserFilm userFilm);
}
