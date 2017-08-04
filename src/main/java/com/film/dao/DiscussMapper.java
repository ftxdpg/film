package com.film.dao;

import com.film.model.Discuss;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/13.
 * 作用：
 */
@Repository
public interface DiscussMapper extends Mapper<Discuss> {
    List<Discuss> discussAndReply(@Param("filmId")Integer filmId, @Param("page")Integer page, @Param("size")Integer size);
}
