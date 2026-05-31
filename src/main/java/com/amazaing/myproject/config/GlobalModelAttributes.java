package com.amazaing.myproject.config;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

@Controller
public class GlobalModelAttributes {

    @ModelAttribute("courseLevels")
    public List<String> courseLevels() {
        return List.of("Inicial", "Intermedio", "Avanzado");
    }

    @ModelAttribute("appName")
    public String appName() {
        return "Curso de Spring MVC";
    }
}
