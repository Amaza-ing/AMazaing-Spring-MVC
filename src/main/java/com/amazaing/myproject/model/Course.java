package com.amazaing.myproject.model;

import jakarta.validation.constraints.*;

public class Course {

    private Long id;

    @NotBlank(message = "El título es obligatorio.")
    @Size(min = 3, max = 80, message = "El título debe tener entre 3 y 80 caracteres.")
    private String title;

    @NotBlank(message = "El nivel es obligatorio.")
    private String level;

    @NotNull(message = "La duración es obligatoria.")
    @Min(value = 1, message = "La duración mínima es de 1 hora.")
    @Max(value = 200, message = "La duración máxima es de 200 horas.")
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