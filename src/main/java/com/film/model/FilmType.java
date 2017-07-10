package com.film.model;

import javax.persistence.*;

@Table(name = "film_type")
public class FilmType {
    @Id
    @Column(name = "film_id")
    private Integer filmId;

    @Id
    @Column(name = "type_id")
    private Integer typeId;

    /**
     * @return film_id
     */
    public Integer getFilmId() {
        return filmId;
    }

    /**
     * @param filmId
     */
    public void setFilmId(Integer filmId) {
        this.filmId = filmId;
    }

    /**
     * @return type_id
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * @param typeId
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}