package com.film.model;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/25.
 * 作用：封装首页的数据
 */
public class IndexInfo {

    // 置顶的5条电影
    private List<Film> up;

    // 正在上映的8条电影
    private List<Film> onNow;

    // 用户看过的电影--最近3条
    private List<Film> watched;

    public IndexInfo() {
    }

    public IndexInfo(List<Film> up, List<Film> onNow, List<Film> watched) {
        this.up = up;
        this.onNow = onNow;
        this.watched = watched;
    }

    public List<Film> getUp() {
        return up;
    }

    public void setUp(List<Film> up) {
        this.up = up;
    }

    public List<Film> getOnNow() {
        return onNow;
    }

    public void setOnNow(List<Film> onNow) {
        this.onNow = onNow;
    }

    public List<Film> getWatched() {
        return watched;
    }

    public void setWatched(List<Film> watched) {
        this.watched = watched;
    }
}
