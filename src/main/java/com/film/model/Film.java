package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import java.util.List;

@Table(name = "film")
public class Film {
    @Id
    @Column(name = "filmId")
    private Integer filmid;

    @NotNull
    private String actor;

    @NotNull
    private String contry;

    @NotNull
    private String createtime;

    @NotNull
    private String director;

    @NotNull
    private String img;

    @NotNull
    private String name;

    @NotNull
    private Double point;

    @NotNull
    private String time;

    @NotNull
    private String introduction;

    @NotNull
    private Double price;

    // 当前页
    @Transient
    private Integer page;

    // 记录数
    @Transient
    private Integer size;

    // 电影与类型的关系
    @Transient
    private List<Types> typesList;

    public Film() {
    }

    public Film(String name) {
        this.name = name;
    }

    public Film(Integer filmid) {
        this.filmid = filmid;
    }

    public Integer getFilmid() {
        return filmid;
    }

    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getContry() {
        return contry;
    }

    public void setContry(String contry) {
        this.contry = contry;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPoint() {
        return point;
    }

    public void setPoint(Double point) {
        this.point = point;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public List<Types> getTypesList() {
        return typesList;
    }

    public void setTypesList(List<Types> typesList) {
        this.typesList = typesList;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }
}