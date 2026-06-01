package com.amazaing.myproject.dao;

import com.amazaing.myproject.model.Course;

import java.util.List;

public interface CourseDao {
    List<Course> findAll();
    Course findById(Long id);
    void save(Course course);
    void update(Course course);
    void deleteById(Long id);
}
