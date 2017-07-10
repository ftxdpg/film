package com.film.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "film")
public class Film {
    @Id
    @Column(name = "filmId")
    private Integer filmid;

    private String actor;

    private String contry;

    private Date createtime;

    private String director;

    private String img;

    private String name;

    private Double point;

    private String time;

    private String introduction;

    /**
     * @return filmId
     */
    public Integer getFilmid() {
        return filmid;
    }

    /**
     * @param filmid
     */
    public void setFilmid(Integer filmid) {
        this.filmid = filmid;
    }

    /**
     * @return actor
     */
    public String getActor() {
        return actor;
    }

    /**
     * @param actor
     */
    public void setActor(String actor) {
        this.actor = actor;
    }

    /**
     * @return contry
     */
    public String getContry() {
        return contry;
    }

    /**
     * @param contry
     */
    public void setContry(String contry) {
        this.contry = contry;
    }

    /**
     * @return createtime
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * @param createtime
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * @return director
     */
    public String getDirector() {
        return director;
    }

    /**
     * @param director
     */
    public void setDirector(String director) {
        this.director = director;
    }

    /**
     * @return img
     */
    public String getImg() {
        return img;
    }

    /**
     * @param img
     */
    public void setImg(String img) {
        this.img = img;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return point
     */
    public Double getPoint() {
        return point;
    }

    /**
     * @param point
     */
    public void setPoint(Double point) {
        this.point = point;
    }

    /**
     * @return time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * @return introduction
     */
    public String getIntroduction() {
        return introduction;
    }

    /**
     * @param introduction
     */
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
}