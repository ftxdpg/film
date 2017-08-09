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

    public IndexInfo() {
    }

    public IndexInfo(List<Film> up, List<Film> onNow) {
        this.up = up;
        this.onNow = onNow;
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
}
