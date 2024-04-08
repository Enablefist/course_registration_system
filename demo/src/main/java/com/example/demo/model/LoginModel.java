package com.example.demo.model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Component
@Entity
public class LoginModel {
	@Id
	private String userName;
	private String password;
	private String role;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	@Override
	public String toString() {
		return "LoginModel [userName=" + userName + ", password=" + password + ", role=" + role + "]";
	}

	public void setRole(String role) {
		this.role = role;
	}

}