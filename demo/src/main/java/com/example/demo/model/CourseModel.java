package com.example.demo.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;


@Entity
public class CourseModel {
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private Long id;
	private String name;
	private String Instructure;
	private String duration;
	
	@ManyToMany(mappedBy = "courses")
	List<StudentModel> students;
	
	@Override
	public String toString() {
		return "CourseModel [id=" + id + ", name=" + name + ", Instructure=" + Instructure + ", duration=" + duration
				+ "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInstructure() {
		return Instructure;
	}
	public void setInstructure(String instructure) {
		Instructure = instructure;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public List<StudentModel> getStudents() {
		return students;
	}
	public void setStudents(List<StudentModel> students) {
		this.students = students;
	}
}