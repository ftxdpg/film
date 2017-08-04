package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/8/2.
 * 作用：评论实体类
 */
@Table(name = "discuss")
public class Discuss {
    @Id
    @Column(name = "discussId")
    private Integer discussId;

    @Column(name = "content")
    private String content;

    @Column(name = "discussTime")
    private String discussTime;

    @Column(name = "discussName")
    private String discussName;

    @Column(name = "discussFloat")
    private Integer discussFloat;

    @Column(name = "film_id")
    private Integer filmId;

    @Transient
    private List<Reply> replyList;

    public Discuss() {
    }

    public Discuss(String content, Integer discussFloat, Integer filmId, String discussName) {
        this.content = content;
        this.discussFloat = discussFloat;
        this.filmId = filmId;
        this.discussName = discussName;
    }

    public Discuss(Integer discussFloat) {
        this.discussFloat = discussFloat;
    }

    public Integer getDiscussId() {
        return discussId;
    }

    public void setDiscussId(Integer discussId) {
        this.discussId = discussId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDiscussTime() {
        return discussTime;
    }

    public void setDiscussTime(String discussTime) {
        this.discussTime = discussTime;
    }

    public String getDiscussName() {
        return discussName;
    }

    public void setDiscussName(String discussName) {
        this.discussName = discussName;
    }

    public Integer getDiscussFloat() {
        return discussFloat;
    }

    public void setDiscussFloat(Integer discussFloat) {
        this.discussFloat = discussFloat;
    }

    public List<Reply> getReplyList() {
        return replyList;
    }

    public void setReplyList(List<Reply> replyList) {
        this.replyList = replyList;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }
}
