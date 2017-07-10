package com.film.model;

import javax.persistence.*;

@Table(name = "types")
public class Types {
    @Id
    @Column(name = "typeId")
    private Integer typeid;

    private String name;

    /**
     * @return typeId
     */
    public Integer getTypeid() {
        return typeid;
    }

    /**
     * @param typeid
     */
    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
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
}