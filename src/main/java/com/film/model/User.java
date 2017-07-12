package com.film.model;

import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;
import org.hibernate.validator.constraints.Email;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.List;

@Table(name = "user")
public class User {
    @Id
    private Integer uid;

    @Pattern(regexp = "^\\w+@\\w{2,6}(\\.\\w{2,3})+$",groups = ValidatedEmail.class)
    private String email;

    @Size(min = 3, max = 20)
    private String name;

    private String password;

    @Pattern(regexp = "^1[3,5,8]\\d{9}$", groups = ValidatedPhone.class)
    private String phone;

    // 用户与电影的关系
    @Transient
    private List<UserFilm> films;

    // 用户与地址的关系
    @Transient
    private List<Address> addresses;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String eamil) {
        this.email = eamil;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}