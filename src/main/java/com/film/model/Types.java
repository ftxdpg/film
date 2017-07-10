package com.film.model;

import javax.persistence.*;
import java.util.List;

@Table(name = "types")
public class Types {
    @Id
    @Column(name = "typeId")
    private Integer typeid;

    private String name;

    // 类型与电影的关系
    private List<Film> films;

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Film> getFilms() {
        return films;
    }

    public void setFilms(List<Film> films) {
        this.films = films;
    }
}