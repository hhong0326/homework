package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.CourseDAO;
import kr.ac.hansung.model.Course;

@Service
public class CourseService {
	@Autowired
	private CourseDAO courseDAO;
	
	public List<Course> getCurrent(){
		return courseDAO.getRegisters();
	}
	
	public List<Course> getSemesterCurrent(){
		return courseDAO.getSemeCourse();
	}
	public List<Course> getDetailSemesterCurrent(int year, String semester){
		return courseDAO.getDetailSemeCourse(year, semester);
	}
	
	public List<Course> getDivisionCurrent(){
		return courseDAO.getDivisionCourse();
	}

	public void insert(Course course) {
		courseDAO.insert(course);
	}
	
	public void delete(String code) {
		courseDAO.delete(code);
	}

}
