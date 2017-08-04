package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/2.
 * 作用：回复实体类
 */
@Table(name = "reply")
public class Reply {
    @Id
    @Column(name = "replyId")
    private Integer replyId;

    @Column(name = "replyTo")
    private String replyTo;

    @Column(name = "replyContent")
    private String replyContent;

    @Column(name = "replyTime")
    private String replyTime;

    @Column(name = "replyUser")
    private String replyUser;

    @Column(name = "replyFloat")
    private Integer replyFloat;

    @Column(name = "film_id")
    private Integer filmId;

    public Reply() {
    }

    public Reply(Integer replyFloat) {
        this.replyFloat = replyFloat;
    }

    public Integer getReplyId() {
        return replyId;
    }

    public void setReplyId(Integer replyId) {
        this.replyId = replyId;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public String getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(String replyTime) {
        this.replyTime = replyTime;
    }

    public String getReplyTo() {
        return replyTo;
    }

    public void setReplyTo(String replyTo) {
        this.replyTo = replyTo;
    }

    public Integer getReplyFloat() {
        return replyFloat;
    }

    public void setReplyFloat(Integer replyFloat) {
        this.replyFloat = replyFloat;
    }

    public String getReplyUser() {
        return replyUser;
    }

    public void setReplyUser(String replyUser) {
        this.replyUser = replyUser;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }
}
