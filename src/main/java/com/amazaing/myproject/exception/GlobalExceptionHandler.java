package com.amazaing.myproject.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(CourseNotFoundException.class)
    public String handleCourseNotFoundException(
            CourseNotFoundException exception,
            Model model) {

        model.addAttribute("pageTitle", "Curso no encontrado");
        model.addAttribute("courseId", exception.getCourseId());
        model.addAttribute("errorMessage", exception.getMessage());

        return "error/course-not-found";
    }

    @ExceptionHandler(Exception.class)
    public String handleException(
            Exception exception,
            Model model) {

        model.addAttribute("pageTitle", "Error inesperado");
        model.addAttribute("errorMessage", exception.getMessage());

        return "error/general-error";
    }
}
