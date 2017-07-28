package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/26.
 * 作用：购物车类
 */
@Table(name = "car")
public class Car {
    @Id
    @Column(name = "carId")
    private Integer carId;

    @Column(name = "filmId")
    private Integer filmId;

    @Column(name = "userId")
    private Integer userId;

    private Integer count;

    @Transient
    private Film film;

    public Car() {
    }

    public Car(Integer filmId, Integer userId) {
        this.filmId = filmId;
        this.userId = userId;
    }

    public Car(Integer userId) {
        this.userId = userId;
    }

    public Car(Integer filmId, Integer userId, Integer count) {
        this.filmId = filmId;
        this.userId = userId;
        this.count = count;
    }

    public Car(Integer filmId, Integer userId, Integer count, Film film) {
        this.filmId = filmId;
        this.userId = userId;
        this.count = count;
        this.film = film;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
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

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }
}
