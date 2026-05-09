package com.amazaing.myproject.controller;

import com.amazaing.myproject.model.Course;
import com.amazaing.myproject.service.CourseService;
import jakarta.validation.Valid;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Locale;

@Controller
@RequestMapping("/courses")
public class CourseController {

    private final CourseService courseService;
    private final MessageSource messageSource;

    public CourseController(
            CourseService courseService,
            MessageSource messageSource) {

        this.courseService = courseService;
        this.messageSource = messageSource;
    }

    @GetMapping
    public String listCourses(Model model) {
        model.addAttribute("pageTitle", "Listado de cursos");
        model.addAttribute("courses", courseService.findAll());

        return "courses/list";
    }

    @GetMapping("/detail")
    public String courseDetail(@RequestParam("id") Long id, Model model) {
        Course course = courseService.findById(id);

        model.addAttribute("pageTitle", course.getTitle());
        model.addAttribute("course", course);

        return "courses/detail";
    }

    @GetMapping("/new")
    public String createCourse(Model model) {
        model.addAttribute("pageTitle", "Crear nuevo curso");
        model.addAttribute("course", new Course());

        return "courses/form";
    }

    @PostMapping
    public String saveCourse(
            @Valid @ModelAttribute("course") Course course,
            BindingResult bindingResult,
            Model model,
            RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("pageTitle", "Crear nuevo curso");
            return "courses/form";
        }

        courseService.save(course);

        Locale locale = LocaleContextHolder.getLocale();

        String successMessage = messageSource.getMessage(
                "success.course.created",
                null,
                locale);

        redirectAttributes.addFlashAttribute("successMessage", successMessage);

        return "redirect:/courses";
    }
}
