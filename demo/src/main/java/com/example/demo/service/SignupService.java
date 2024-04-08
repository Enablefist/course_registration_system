package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.LoginRepository;
import com.example.demo.model.LoginModel;

@Service
public class SignupService {

	@Autowired
	private LoginRepository signupRepository;
	
	@Autowired
	private LoginModel login;

	public boolean createUser(String username, String password, String role) {
		login.setUserName(username);
		login.setPassword(password);
		login.setRole(role);
		signupRepository.save(login);
		return true;
	}
}