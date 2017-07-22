package com.film.model;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/15.
 * 作用：商品类型关系类
 */
@Table(name = "film_type")
public class FilmType {
    @Id
    @Column(name = "film_id")
    private Integer filmId;

    @Id
    @Column(name = "type_id")
    private Integer typeId;

    public FilmType() {
    }

    public FilmType(Integer filmId, Integer typeId) {
        this.filmId = filmId;
        this.typeId = typeId;
    }

    public Integer getFilmId() {
        return filmId;
    }

    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}
