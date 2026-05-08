package com.amazaing.myproject.service;

import com.amazaing.myproject.model.Course;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CourseService {

    private final List<Course> courses = new ArrayList<>();

    private Long nextId = 4L;

    public CourseService() {
        courses.add(new Course(1L, "HTML & CSS", "Inicial", 20));
        courses.add(new Course(2L, "Java & POO", "Intermedio", 15));
        courses.add(new Course(3L, "Spring MVC", "Avanzado", 25));
    }

    public List<Course> findAll() {
        return courses;
    }

    public Course findById(Long id) {
        return courses.stream()
                .filter(course -> course.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    public void save(Course course) {
        course.setId(nextId);
        courses.add(course);
        nextId++;
    }
}
