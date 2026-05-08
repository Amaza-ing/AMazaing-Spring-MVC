package com.amazaing.myproject.model;

public class Course {

    private Long id;
    private String title;
    private String level;
    private Integer durationInHours;

    public Course() {
    }

    public Course(Long id, String title, String level, Integer durationInHours) {
        this.id = id;
        this.title = title;
        this.level = level;
        this.durationInHours = durationInHours;
    }

    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getLevel() {
        return level;
    }

    public Integer getDurationInHours() {
        return durationInHours;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public void setDurationInHours(Integer durationInHours) {
        this.durationInHours = durationInHours;
    }
}