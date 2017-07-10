package com.film.model;

import javax.persistence.*;

@Table(name = "user_film")
public class UserFilm {
    @Id
    @Column(name = "film_id")
    private Integer filmId;

    @Id
    @Column(name = "user_id")
    private Integer userId;

    private String collect;

    private Double score;

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
     * @return user_id
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * @return collect
     */
    public String getCollect() {
        return collect;
    }

    /**
     * @param collect
     */
    public void setCollect(String collect) {
        this.collect = collect;
    }

    /**
     * @return score
     */
    public Double getScore() {
        return score;
    }

    /**
     * @param score
     */
    public void setScore(Double score) {
        this.score = score;
    }
}