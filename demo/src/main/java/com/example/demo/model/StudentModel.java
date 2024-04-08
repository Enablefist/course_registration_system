package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinColumns;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

import java.util.List;

import com.example.demo.model.CourseModel;

@Entity
public class StudentModel {
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Student_id;
	private String name;
	private String email;
	
	@ManyToMany
	@JoinTable(
			name="student_course",
			joinColumns=@JoinColumn(name="student_id"),
			inverseJoinColumns=@JoinColumn(name="id"))
	private List<CourseModel> courses;
	
	@Override
	public String toString() {
		return "StudentModel [Student_id=" + Student_id + ", name=" + name + ", email=" + email + "]";
	}
	public Long getStudent_id() {
		return Student_id;
	}
	public void setStudent_id(Long student_id) {
		Student_id = student_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<CourseModel> getCourses() {
		return courses;
	}
	public void setCourses(List<CourseModel> courses) {
		this.courses = courses;
	}
}