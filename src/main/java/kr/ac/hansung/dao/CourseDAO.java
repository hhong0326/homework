package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Course;

@Repository
public class CourseDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from course";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);

	}

	public List<Course> getCourses() {
		String sqlStatement = "select * from course";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getString("semester"));
				course.setCode(rs.getString("code"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setGrades(rs.getInt("grades"));

				return course;
			}
		});
	}
	
	public List<Course> getRegisters() {
		String sqlStatement = "select * from register";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getString("semester"));
				course.setCode(rs.getString("code"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setGrades(rs.getInt("grades"));

				return course;
			}
		});
	}

	public List<Course> getSemeCourse() {
		String sqlStatement = "select year, semester, sum(grades) from course group by year, semester";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getString("semester"));
				course.setGrades(rs.getInt("sum(grades)"));

				return course;
			}
		});
	}
	
	public List<Course> getDetailSemeCourse(int year, String semester) {
		String sqlStatement = "select year, semester, code, title, division, grades from course where year=" + year
				+ " and semester = " + semester;

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getString("semester"));
				course.setCode(rs.getString("code"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setGrades(rs.getInt("grades"));

				return course;
			}
		});
	}

	public List<Course> getDivisionCourse() {
		String sqlStatement = "select division, sum(grades) from course group by division";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setDivision(rs.getString("division"));
				course.setGrades(rs.getInt("sum(grades)"));

				return course;
			}
		});
	}
	
	public List<Course> getRegisterCourses() {
		String sqlStatement = "select * from register";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getString("semester"));
				course.setCode(rs.getString("code"));
				course.setTitle(rs.getString("title"));
				course.setDivision(rs.getString("division"));
				course.setGrades(rs.getInt("grades"));

				return course;
			}
		});
	}

	public boolean insert(Course course) {
		int year = 2018;
		String semester = "1";
		String code = course.getCode();
		String title = course.getTitle();
		String division = course.getDivision();
		int grades = 3;

		String sqlStatement = "insert into register (year, semester, code, title, division, grades) values(?,?,?,?,?,?)";

		return (jdbcTemplate.update(sqlStatement, new Object[] { year, semester, code, title, division, grades }) == 1);
	}

	public boolean delete(String code) {
		String sqlStatement = "delete from register where code=?";

		return (jdbcTemplate.update(sqlStatement, new Object[] { code }) == 1);
	}
}
