package com.film.model;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：购买列表
 */
@Table(name = "orderDetail")
public class OrderDetail {
    @Column(name = "orderDetailId")
    private Integer orderDetailId;

    @Column(name = "film_id")
    private Integer filmId;

    @Column(name = "order_id")
    private Integer orderId;

    @Column(name = "number")
    private Integer number;

    @Transient
    private Film film;

    public OrderDetail() {
    }

    public OrderDetail(Integer orderId) {
        this.orderId = orderId;
    }

    public OrderDetail(Integer filmId, Integer orderId, Integer number) {
        this.filmId = filmId;
        this.orderId = orderId;
        this.number = number;
    }

    public Integer getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(Integer orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }
}
