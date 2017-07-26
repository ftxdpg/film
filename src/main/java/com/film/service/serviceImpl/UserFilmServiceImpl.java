package com.film.service.serviceImpl;

import com.film.dao.UserFilmMapper;
import com.film.model.UserFilm;
import com.film.service.UserFilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/25.
 * 作用：
 */
@Repository
public class UserFilmServiceImpl implements UserFilmService {
    @Autowired
    private UserFilmMapper userFilmMapper;

    // 新增收藏
    @Override
    public void insert(UserFilm userFilm){
        userFilmMapper.insert(userFilm);
    }

    // 取消收藏
    @Override
    public void delete(UserFilm userFilm){
        userFilmMapper.delete(userFilm);
    }

    // 查找对应记录
    @Override
    public UserFilm select(UserFilm userFilm) {
        List<UserFilm> userFilms = userFilmMapper.select(userFilm);
        if (userFilms == null || userFilms.size() == 0){
            return null;
        }else {
            return userFilms.get(0);
        }
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {

    }

    @Override
    public UserFilm selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(UserFilm userFilm) {

    }

    @Override
    public UserFilm login(UserFilm userFilm) {
        return null;
    }

    @Override
    public List<UserFilm> list() {
        return null;
    }
}
