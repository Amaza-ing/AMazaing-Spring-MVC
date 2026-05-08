package com.amazaing.myproject.model;

public class Course {

    private Long id;
    private String title;
    private String level;
    private int durationInHours;

    public Course(Long id, String title, String level, int durationInHours) {
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

    public int getDurationInHours() {
        return durationInHours;
    }
}