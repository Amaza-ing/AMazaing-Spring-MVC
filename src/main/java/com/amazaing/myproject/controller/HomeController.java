package com.amazaing.myproject.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HomeController implements Controller {

    @Override
    public ModelAndView handleRequest(
            HttpServletRequest request,
            HttpServletResponse response) {

        ModelAndView modelAndView = new ModelAndView("home");

        modelAndView.addObject("pageTitle", "Bienvenido a Mi Proyecto");
        modelAndView.addObject("message", "Nuestra primera aplicación Spring MVC funciona correctamente.");
        modelAndView.addObject("courseName", "Curso de Spring MVC");

        return modelAndView;
    }
}
