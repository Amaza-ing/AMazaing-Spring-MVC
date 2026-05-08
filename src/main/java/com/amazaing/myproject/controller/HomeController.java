package com.amazaing.myproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping({"/", "/home"})
    public String home(Model model) {
        model.addAttribute("pageTitle", "Bienvenido a Mi Proyecto");
        model.addAttribute("message", "Nuestra primera aplicación Spring MVC funciona correctamente.");
        model.addAttribute("courseName", "Curso de Spring MVC");

        return "home";
    }
}

