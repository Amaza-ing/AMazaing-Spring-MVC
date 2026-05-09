package com.amazaing.myproject.dao;

import com.amazaing.myproject.model.Course;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

@Repository
public class JdbcCourseDao implements CourseDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcCourseDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final RowMapper<Course> courseRowMapper = (resultSet, rowNumber) ->
            new Course(
                    resultSet.getLong("id"),
                    resultSet.getString("title"),
                    resultSet.getString("level"),
                    resultSet.getInt("duration_in_hours")
            );

    @Override
    public List<Course> findAll() {
        String sql = """
                SELECT id, title, level, duration_in_hours
                FROM courses
                ORDER BY id
                """;

        return jdbcTemplate.query(sql, courseRowMapper);
    }

    @Override
    public Course findById(Long id) {
        String sql = """
                SELECT id, title, level, duration_in_hours
                FROM courses
                WHERE id = ?
                """;

        List<Course> courses = jdbcTemplate.query(sql, courseRowMapper, id);

        return courses.stream()
                .findFirst()
                .orElse(null);
    }

    @Override
    public void save(Course course) {
        String sql = """
                INSERT INTO courses (title, level, duration_in_hours)
                VALUES (?, ?, ?)
                """;

        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(connection -> {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    sql,
                    Statement.RETURN_GENERATED_KEYS
            );

            preparedStatement.setString(1, course.getTitle());
            preparedStatement.setString(2, course.getLevel());
            preparedStatement.setInt(3, course.getDurationInHours());

            return preparedStatement;
        }, keyHolder);

        Number generatedId = keyHolder.getKey();

        if (generatedId != null) {
            course.setId(generatedId.longValue());
        }
    }
}
