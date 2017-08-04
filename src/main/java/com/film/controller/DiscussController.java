package com.film.controller;

import com.film.model.Discuss;
import com.film.model.Reply;
import com.film.model.User;
import com.film.service.DiscussService;
import com.film.service.ReplyService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.IDUtils;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/3.
 * 作用：
 */
@Controller
@RequestMapping("/film/user/discuss")
public class DiscussController {

    @Autowired
    private DiscussService discussService;

    @Autowired
    private ReplyService replyService;

    // 添加评论
    @RequestMapping("/addDiscuss")
    @ResponseBody
    public FilmResult addDiscuss(Discuss discuss, Integer page , Integer size, HttpServletRequest request, HttpSession session){
        try {
            User user = (User) session.getAttribute("user");
            if (user == null || "".equals(discuss.getContent())){
                return new FilmResult(500, "请先登录", null);
            }
            discuss.setDiscussFloat(IDUtils.genItemId());
            discuss.setDiscussName(user.getName());
            discuss.setDiscussTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            // 插入信息
            discussService.insert(discuss);
            // 分页信息
            PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(discuss.getFilmId(), page, size);
            String discuss1 = BehindAjaxResult.discuss(discussPageUtil, request, user);
            String discussPage = BehindAjaxResult.discuss_page(discussPageUtil);
            return new FilmResult(200, discuss1, discussPage);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 添加回复
    @RequestMapping("/addReply")
    @ResponseBody
    public FilmResult addReply(Reply reply, Integer page, Integer size, HttpServletRequest request, HttpSession session){
        try {
            User user = (User) session.getAttribute("user");
            if (user == null || "".equals(reply.getReplyContent())){
                return new FilmResult(500, null , null);
            }
            reply.setReplyUser(user.getName());
            reply.setReplyTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            replyService.insert(reply);
            PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(reply.getFilmId(), page, size);
            String discuss = BehindAjaxResult.discuss(discussPageUtil, request, user);
            String discussPage = BehindAjaxResult.discuss_page(discussPageUtil);
            return new FilmResult(200, discuss, discussPage);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 删除评论
    @RequestMapping("/deleteDiscuss")
    @ResponseBody
    public FilmResult deleteDiscuss(Integer filmId, Integer discussFloor, Integer page, Integer size, HttpServletRequest request, HttpSession session){
        try {
            // 删除评论以及回复
            discussService.deleteDiscussAndReply(discussFloor);
            PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(filmId, page, size);
            String discuss = BehindAjaxResult.discuss(discussPageUtil, request, (User) session.getAttribute("user"));
            String discussPage = BehindAjaxResult.discuss_page(discussPageUtil);
            return new FilmResult(200, discuss, discussPage);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 删除回复
    @RequestMapping("/deleteReply")
    @ResponseBody
    public FilmResult deleteReply(Integer filmId, Integer replyId, Integer page, Integer size, HttpServletRequest request, HttpSession session){
        try {
            replyService.deleteByPrimaryKey(replyId);
            PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(filmId, page, size);
            String discuss = BehindAjaxResult.discuss(discussPageUtil, request, (User) session.getAttribute("user"));
            String discussPage = BehindAjaxResult.discuss_page(discussPageUtil);
            return new FilmResult(200, discuss, discussPage);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }


}
