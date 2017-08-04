package com.film.service.serviceImpl;

import com.film.dao.ReplyMapper;
import com.film.model.Reply;
import com.film.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/3.
 * 作用：
 */
@Repository
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    private ReplyMapper replyMapper;

    // 保存回复
    @Override
    public void insert(Reply reply) {
        replyMapper.insert(reply);
    }

    // 删除单条回复（无法链式删除）
    @Override
    public void deleteByPrimaryKey(Integer id) {
        replyMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Reply selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(Reply reply) {

    }

    @Override
    public Reply login(Reply reply) {
        return null;
    }

    @Override
    public List<Reply> list() {
        return null;
    }
}
