package com.film.dao;

import com.film.model.User;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;
@Repository
public interface UserMapper extends Mapper<User> {
    // 是否有相同的昵称
    int selectByName(String name);

    // 是否有相同的邮箱
    int selectByEmail(String email);

    // 是否有相同的手机号
    int selectByPhone(String phone);

    void updatePhoneOrEmailToNull(User user);
}