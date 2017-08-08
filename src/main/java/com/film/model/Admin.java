package com.film.model;

import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/13.
 * 作用：管理员类
 */
@Table(name = "admin")
public class Admin {
    @Id
    private Integer id;

    @Size(min = 2, max = 4)
    private String name;

    private String password;

    @Pattern(regexp = "^\\w+@\\w{2,6}(\\.\\w{2,3})+$",groups = ValidatedEmail.class)
    private String email;

    @Pattern(regexp = "^1[3,5,8]\\d{9}$", groups = ValidatedPhone.class)
    private String phone;

    public Admin() {
    }

    public Admin(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
