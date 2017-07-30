package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/10.
 * 作用：订单
 */
@Table(name = "order_")
public class Order {

    @Id
    @Column(name = "orderId")
    private Integer orderId;

    @Column(name = "createdTime")
    private String createdTime;

    @Column(name = "userId")
    private Integer userId;

    // 总金额
    private Double money;

    // 是否已经付款
    private String status;

    // 订单详情
    @Transient
    private List<OrderDetail> orderDetails;

    public Order() {
    }

    public Order(Integer orderId, String status) {
        this.orderId = orderId;
        this.status = status;
    }

    public Order(String createdTime, Integer userId, String status) {
        this.createdTime = createdTime;
        this.userId = userId;
        this.status = status;
    }

    public Order(Integer userId) {
        this.userId = userId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
