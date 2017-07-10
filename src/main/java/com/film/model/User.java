package com.film.model;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.List;

@Table(name = "user")
public class User {
    @Id
    private Integer uid;

    private String eamil;

    private String name;

    private String phone;

    // 用户与电影的关系
    private List<UserFilm> films;

    // 用户与地址的关系
    private List<Address> addresses;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getEamil() {
        return eamil;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<UserFilm> getFilms() {
        return films;
    }

    public void setFilms(List<UserFilm> films) {
        this.films = films;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }
}