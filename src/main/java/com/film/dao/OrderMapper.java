package com.film.dao;

import com.film.model.Order;
import com.film.model.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
@Repository
public interface OrderMapper extends Mapper<Order> {
    UserInfo selectOrderPage(@Param("page")int page, @Param("size")int size, @Param("uid")int uid);
}
