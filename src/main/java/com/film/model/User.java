package com.film.model;

import javax.persistence.*;

@Table(name = "user")
public class User {
    @Id
    private Integer uid;

    private String eamil;

    private String name;

    private String phone;

    /**
     * @return uid
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * @param uid
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * @return eamil
     */
    public String getEamil() {
        return eamil;
    }

    /**
     * @param eamil
     */
    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }
}