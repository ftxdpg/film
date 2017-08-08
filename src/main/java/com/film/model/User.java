package com.film.model;

import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;
import org.hibernate.validator.constraints.Email;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
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

    @NotNull
    private String password;

    @Pattern(regexp = "^1[3,5,8]\\d{9}$", groups = ValidatedPhone.class)
    private String phone;

    public User() {
    }

    public User(String name) {
        this.name = name;
    }

    // 用户与电影收藏的关系
    @Transient
    private List<Film> films;

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

    public List<Film> getFilms() {
        return films;
    }

    public void setFilms(List<Film> films) {
        this.films = films;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}