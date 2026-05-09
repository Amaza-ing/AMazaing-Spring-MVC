package com.amazaing.myproject.service;

import com.amazaing.myproject.dao.CourseDao;
import com.amazaing.myproject.model.Course;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {

    private final CourseDao courseDao;

    public CourseService(CourseDao courseDao) {
        this.courseDao = courseDao;
    }

    public List<Course> findAll() {
        return courseDao.findAll();
    }

    public Course findById(Long id) {
        return courseDao.findById(id);
    }

    public void save(Course course) {
        courseDao.save(course);
    }
}
