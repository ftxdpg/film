package com.film.service;

import com.film.model.User;

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
}
