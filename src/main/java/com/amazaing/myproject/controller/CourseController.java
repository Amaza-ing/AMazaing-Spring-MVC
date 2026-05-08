package com.amazaing.myproject.controller;

import com.amazaing.myproject.model.Course;
import com.amazaing.myproject.service.CourseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/courses")
public class CourseController {

    private final CourseService courseService;

    public CourseController(CourseService courseService) {
        this.courseService = courseService;
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

        if (course == null) {
            model.addAttribute("pageTitle", "Curso no encontrado");
            model.addAttribute("courseId", id);

            return "courses/not-found";
        }

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
            @ModelAttribute("course") Course course,
            RedirectAttributes redirectAttributes) {

        courseService.save(course);

        redirectAttributes.addFlashAttribute(
                "successMessage",
                "Curso creado correctamente");

        return "redirect:/courses";
    }
}
