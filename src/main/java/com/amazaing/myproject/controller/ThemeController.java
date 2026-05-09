package com.amazaing.myproject.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/theme")
public class ThemeController {

    @GetMapping("/change")
    public String changeTheme(
            @RequestParam(defaultValue = "light") String theme,
            HttpSession session) {

        if (!theme.equals("dark")) {
            theme = "light";
        }

        session.setAttribute("theme", theme);

        return "redirect:/home";
    }
}
