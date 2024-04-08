package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.StudentModel;
import com.example.demo.model.CourseModel;

import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.CourseRepository;


@Service
public class StudentService {
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private CourseRepository courseRepository;
	
	public List<CourseModel> getAllCourses(){
		return courseRepository.findAll();
	}
	public List<CourseModel> getRegisteredCourses(Long student_id){
		Optional<StudentModel> studentOptional=adminRepository.findById(student_id);
		if(studentOptional.isPresent()) {
			StudentModel student=studentOptional.get();
			return student.getCourses();
		}
		else {
			throw new IllegalArgumentException("student not found with ID:"+student_id);
		}
	}
	public void registerforCourses(Long student_id,Long id) {
		Optional<StudentModel> studentOptional=adminRepository.findById(student_id);
		Optional<CourseModel> courseOptional=courseRepository.findById(id);
		if(studentOptional.isPresent() && courseOptional.isPresent()) {
			StudentModel student=studentOptional.get();
			CourseModel course=courseOptional.get();
			List<CourseModel> registeredCourses=student.getCourses();
			if(!registeredCourses.contains(course)) {
				registeredCourses.add(course);
				student.setCourses(registeredCourses);
				adminRepository.save(student);
			}else {
				throw new IllegalArgumentException("student is already regitered for the course.");
			}
		}else {
			throw new IllegalArgumentException("Student or Course not found with provided ID's");
		}
	}
	public boolean isAlreadyRegistered(Long studentId, Long courseId) {
	    // Get the student from the database
	    StudentModel student = adminRepository.findById(studentId).orElse(null);
	    if(student == null) {
	        // Handle the case where the student is not found
	        return false;
	    }

	    // Check if the student is already registered for the course
	    for(CourseModel course : student.getCourses()) {
	        if(course.getId().equals(courseId)) {
	            return true;
	        }
	    }

	    // If we reach here, it means the student is not registered for the course
	    return false;
	}
	public boolean areIdsPresent(Long studentId, Long courseId) {
	    // Check if the student ID is present in the database
	    boolean isStudentPresent = adminRepository.existsById(studentId);
	    // Check if the course ID is present in the database
	    boolean isCoursePresent = courseRepository.existsById(courseId);

	    // Return true only if both IDs are present
	    return isStudentPresent && isCoursePresent;
	}
	public boolean Studentidispresent(Long student_id) {
	    // Check if the student ID is present in the database
	    boolean isStudentPresent = adminRepository.existsById(student_id);
	    // Check if the course ID is present in the database

	    // Return true only if course IDs are present
	    return isStudentPresent;
	}


}