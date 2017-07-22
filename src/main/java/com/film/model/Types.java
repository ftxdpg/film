package com.film.model;

import javax.persistence.*;
import java.util.List;

@Table(name = "types")
public class Types {
    @Id
    @Column(name = "typeId")
    private Integer typeid;

    @Column(name = "typeName")
    private String typeName;

    public Types() {
    }

    public Types(Integer typeid) {
        this.typeid = typeid;
    }

    public Types(String typeName) {
        this.typeName = typeName;
    }

    // 类型与电影的关系
    @Transient
    private List<Film> films;

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<Film> getFilms() {
        return films;
    }

    public void setFilms(List<Film> films) {
        this.films = films;
    }
}