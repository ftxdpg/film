package com.film.model;

import javax.persistence.*;

@Table(name = "user_film")
public class UserFilm {

    private Integer filmId;

    private Integer userId;

    private String collect;

    private Double score;

    public UserFilm() {
    }

    public UserFilm(Integer filmId, Integer userId, String collect) {
        this.filmId = filmId;
        this.userId = userId;
        this.collect = collect;
    }

    public UserFilm(Integer filmId, Integer userId, Double score) {
        this.filmId = filmId;
        this.userId = userId;
        this.score = score;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCollect() {
        return collect;
    }

    public void setCollect(String collect) {
        this.collect = collect;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }
}