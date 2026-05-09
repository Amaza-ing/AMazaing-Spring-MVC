package com.amazaing.myproject.exception;

public class CourseNotFoundException extends RuntimeException {

    private final Long courseId;

    public CourseNotFoundException(Long courseId) {
        super("No se ha encontrado ningún curso con id " + courseId);
        this.courseId = courseId;
    }

    public Long getCourseId() {
        return courseId;
    }
}
