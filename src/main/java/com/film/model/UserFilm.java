package com.film.model;

import javax.persistence.*;

@Table(name = "user_film")
public class UserFilm {
    @Id
    private Integer filmId;

    @Id
    private Integer userId;

    @Transient
    private Integer page;

    @Transient
    private Integer size;

    public UserFilm() {
    }

    public UserFilm(Integer filmId) {
        this.filmId = filmId;
    }

    public UserFilm(Integer filmId, Integer userId) {
        this.filmId = filmId;
        this.userId = userId;
    }

    public UserFilm(Integer userId, Integer page, Integer size) {
        this.userId = userId;
        this.page = page;
        this.size = size;
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

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }
}