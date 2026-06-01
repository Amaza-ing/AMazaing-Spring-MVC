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

    private void addFlashMessage(
            RedirectAttributes redirectAttributes,
            String messageCode) {

        Locale locale = LocaleContextHolder.getLocale();

        String message = messageSource.getMessage(
                messageCode,
                null,
                locale
        );

        redirectAttributes.addFlashAttribute("successMessage", message);
    }

    @GetMapping
    public String listCourses(Model model) {
        model.addAttribute("pageTitle", "courses.list.title");
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
        model.addAttribute("pageTitle", "form.title");
        model.addAttribute("formAction", "/courses");
        model.addAttribute("submitCode", "form.submit");
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
            model.addAttribute("pageTitle", "form.title");
            model.addAttribute("formAction", "/courses");
            model.addAttribute("submitCode", "form.submit");

            return "courses/form";
        }

        courseService.save(course);

        addFlashMessage(
                redirectAttributes,
                "success.course.created"
        );

        return "redirect:/courses";
    }

    @GetMapping("/edit")
    public String showEditForm(
            @RequestParam("id") Long id,
            Model model) {

        Course course = courseService.findById(id);

        model.addAttribute("pageTitle", "courses.edit.title");
        model.addAttribute("formAction", "/courses/update");
        model.addAttribute("submitCode", "courses.update");
        model.addAttribute("course", course);

        return "courses/form";
    }

    @PostMapping("/update")
    public String updateCourse(
            @Valid @ModelAttribute("course") Course course,
            BindingResult bindingResult,
            Model model,
            RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("pageTitle", "courses.edit.title");
            model.addAttribute("formAction", "/courses/update");
            model.addAttribute("submitCode", "courses.update");

            return "courses/form";
        }

        courseService.update(course);

        addFlashMessage(
                redirectAttributes,
                "success.course.updated"
        );

        return "redirect:/courses";
    }

    @PostMapping("/delete")
    public String deleteCourse(
            @RequestParam("id") Long id,
            RedirectAttributes redirectAttributes) {

        courseService.deleteById(id);

        addFlashMessage(
                redirectAttributes,
                "success.course.deleted"
        );

        return "redirect:/courses";
    }
}
