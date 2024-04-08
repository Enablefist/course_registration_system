package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.CourseModel;
import com.example.demo.service.AdminService;
import com.example.demo.service.StudentService;
import com.example.demo.model.StudentModel;
@Controller
@RequestMapping("/students")
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private AdminService courseService;
	
	
	@GetMapping("/viewCourses")
	public String studentviewCourses(Model model) {
		model.addAttribute("courses",courseService.getAllCourse());
		return "student/course-view";
	}
	
	@GetMapping("/register")
	public String StudentRegister() {
		return "student/Register-course";
	}
	@PostMapping("/register")
	public String registerCourse(@RequestParam("student_id") Long studentId, @RequestParam("id") Long id, Model model) {
		if(!studentService.areIdsPresent(studentId, id)) {
	        return "student/idNotPresent";
	    }
	    boolean isRegistered = studentService.isAlreadyRegistered(studentId, id);
	    if(isRegistered) {
	        model.addAttribute("message", "Student is already registered for this course");
	        return "student/alreadyRegistered";
	    } else {
	        studentService.registerforCourses(studentId, id);
	        return "StudentLogin";
	    }
	}
	@GetMapping("/registeredCourses")
	public String ViewRegisteredCourses() {
		return "student/ViewRegistered-courses";
	}
	 @PostMapping("/registeredCourses")
	    public String viewRegisteredCourses(Model model, @RequestParam Long student_id) {
		 if(!studentService.Studentidispresent(student_id)) {
		        return "student/ViewRegistered-courses";
		    }
	        List<CourseModel> registeredCourses = studentService.getRegisteredCourses(student_id);
	        model.addAttribute("registeredCourses", registeredCourses);
	        return "student/ViewRegistered-courses"; 
	    }
	 @GetMapping("/StudentLogin")
	 public String returnlogin() {
		 return "StudentLogin";
	 }
	 @GetMapping("/Register-course")
	 public String returnregisterCourse() {
		 return "student/Register-course";
	 }
}