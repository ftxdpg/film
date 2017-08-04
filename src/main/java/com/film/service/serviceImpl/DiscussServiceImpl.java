package com.film.service.serviceImpl;

import com.film.dao.DiscussMapper;
import com.film.dao.ReplyMapper;
import com.film.model.Discuss;
import com.film.model.Reply;
import com.film.service.DiscussService;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/3.
 * 作用：
 */
@Repository
public class DiscussServiceImpl implements DiscussService {

    @Autowired
    private DiscussMapper discussMapper;

    @Autowired
    private ReplyMapper replyMapper;

    // 查询所有的评论
    @Override
    public PageUtil<Discuss> selectDiscuss(Integer filmId, Integer page, Integer size) throws Exception{
        PageUtil<Discuss> discussPageUtil = new PageUtil<>(page, size);
        // 查询该电影评论总数
        Discuss discuss = new Discuss();
        discuss.setFilmId(filmId);
        int totalCount = discussMapper.selectCount(discuss);
        // 设置总数
        discussPageUtil.setTotalCount(totalCount);
        // 判断当前页
        if (page == null || page <= 0){
            discussPageUtil.setCurrentPage(1);
            page = 1;
        }
        // 判断分页大小
        if (size == null || size <= 0){
            discussPageUtil.setPageSize(5);
            size = 5;
        }
        // 判断跳转到第几页
        if (page > discussPageUtil.getTotalPage() && discussPageUtil.getTotalPage() != 0){
            discussPageUtil.setCurrentPage(discussPageUtil.getTotalPage());
            page = discussPageUtil.getTotalPage();
        }
        // 查询对应的分页信息
        List<Discuss> discussList = discussMapper.discussAndReply(filmId, (page - 1) * size, size);
        // 设置分页信息
        discussPageUtil.setData(discussList);
        return discussPageUtil;
    }

    // 保存评论
    @Override
    public void insert(Discuss discuss) {
        discussMapper.insertSelective(discuss);
    }

    // 删除评论以及全部回复
    @Override
    public void deleteDiscussAndReply(Integer discussFloor) throws Exception{
        discussMapper.delete(new Discuss(discussFloor));
        replyMapper.delete(new Reply(discussFloor));
    }


    @Override
    public void deleteByPrimaryKey(Integer id) {
    }

    @Override
    public Discuss selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(Discuss discuss) {
    }

    @Override
    public Discuss login(Discuss discuss) {
        return null;
    }

    @Override
    public List<Discuss> list() {
        return null;
    }
}
