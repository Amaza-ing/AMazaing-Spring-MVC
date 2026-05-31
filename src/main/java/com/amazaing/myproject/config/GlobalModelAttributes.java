package com.amazaing.myproject.config;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@ControllerAdvice
public class GlobalModelAttributes {

    @ModelAttribute("courseLevels")
    public List<String> courseLevels() {
        return List.of("Inicial", "Intermedio", "Avanzado", "Experto");
    }

    @ModelAttribute("appName")
    public String appName() {
        return "Curso de Spring MVC";
    }
}
