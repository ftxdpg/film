package com.film.service;

import com.film.model.Discuss;
import com.film.util.PageUtil;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/3.
 * 作用：
 */
public interface DiscussService extends BaseService<Discuss> {

    // 查询所有的评论
    PageUtil<Discuss> selectDiscuss(Integer filmId, Integer page, Integer size) throws Exception;

    // 删除评论以及全部回复
    void deleteDiscussAndReply(Integer DiscussFloor) throws Exception;
}
