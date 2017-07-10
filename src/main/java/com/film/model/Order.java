package com.film.model;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/10.
 * 作用：订单
 */
public class Order {

    private Integer orderId;

    private String orderName;

    private int count;

    // 订单与用户的关系
    private User user;

    // 订单与地址的关系
    private Address address;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
