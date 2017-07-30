package com.film.service;

import com.film.model.User;
import com.film.model.UserFilm;
import com.film.util.PageUtil;

import javax.servlet.ServletOutputStream;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/11.
 */
public interface UserService extends BaseService<User>{
    // 是否有相同的昵称
    int selectByName(String name);

    // 是否有相同的邮箱
    int selectByEmail(String email);

    // 是否有相同的手机号
    int selectByPhone(String phone);

    // 导出用户列表
    void export(List<User> personList, ServletOutputStream outputStream);

    // 分页插件分页
    List<User> getUserListByTool(Integer page, Integer size);

    // 查询用户与电影的收藏关系+分页
    PageUtil<User> selectCollection(UserFilm userFilm);
}
