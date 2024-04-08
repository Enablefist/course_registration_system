package com.example.demo.service;

import com.example.demo.model.StudentModel;
import com.example.demo.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.CourseModel;
import com.example.demo.repository.CourseRepository;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {
	@Autowired
	private AdminRepository studentRepository;
	
	@Autowired
	private CourseRepository courseRepository;

	public AdminService(AdminRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	public List<StudentModel> getAllStudents() {
		return studentRepository.findAll();
	}

	public StudentModel getStudentById(Long student_id) {
		return studentRepository.findById(student_id).orElse(null);
	}

	public void saveStudent(StudentModel student) {
		studentRepository.save(student);
	}
	public int updateStudent(long student_id, String name, String email) {
	    try {
	        Optional<StudentModel> optionalStudent = studentRepository.findById(student_id);
	        if (optionalStudent.isPresent()) {
	            StudentModel student = optionalStudent.get();
	            student.setName(name);
	            student.setEmail(email);
	            studentRepository.save(student); // Save the updated student
	            return 1; // Success
	        } else {
	            return 0; // Student not found
	        }
	    } catch (Exception e) {
	        // Log the exception or handle it as needed
	        return 0; // Update failed
	    }
	}


	public int deleteStudent(Long student_id) {
		if(studentRepository.existsById(student_id)) {
			studentRepository.deleteById(student_id);
			return 1;
		}
		return 0;
	}
	public List<CourseModel> getAllCourse(){
		return courseRepository.findAll();
	}
	public void addCourse(CourseModel course) {
		courseRepository.save(course);
	}
	public CourseModel getCourseById(Long id) {
		return courseRepository.findById(id).orElse(null);
	}
	public int deleteCourse(Long id) {
		if(courseRepository.existsById(id)) {
			courseRepository.deleteById(id);
			return 1;
		}
		return 0;
	}
	public int updateCourse(long id,String name,String Instructure,String duration) {
		try {
	        Optional<CourseModel> optionalcourse = courseRepository.findById(id);
	        if (optionalcourse.isPresent()) {
	            CourseModel course = optionalcourse.get();
	            course.setName(name);
	           course.setInstructure(Instructure);
	           course.setDuration(duration);
	            courseRepository.save(course); // Save the updated course
	            return 1; // Success
	        } else {
	            return 0; // course not found
	        }
	    } catch (Exception e) {
	        // Log the exception or handle it as needed
	        return 0; // Update failed
	    }
	}
	public boolean areIdsPresent(Long studentId) {
	    // Check if the student ID is present in the database
	    boolean isStudentPresent = studentRepository.existsById(studentId);
	    // Check if the course ID is present in the database

	    // Return true only if both IDs are present
	    return isStudentPresent;
	}
	public boolean coursidispresent(Long id) {
	    // Check if the student ID is present in the database
	    boolean isCoursePresent = courseRepository.existsById(id);
	    // Check if the course ID is present in the database

	    // Return true only if course IDs are present
	    return isCoursePresent;
	}
}
