package com.film.model;

import javax.persistence.*;

@Table(name = "user_address")
public class UserAddress {
    @Id
    @Column(name = "user_id")
    private Integer userId;

    @Id
    @Column(name = "address_id")
    private Integer addressId;

    /**
     * @return user_id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * @return address_id
     */
    public Integer getAddressId() {
        return addressId;
    }

    /**
     * @param addressId
     */
    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }
}