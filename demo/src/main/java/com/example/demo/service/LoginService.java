package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.LoginRepository;
import com.example.demo.model.LoginModel;

@Service
public class LoginService {

    @Autowired
    private LoginRepository loginRepository;

    public boolean validateUser(String username, String password, String role) {
        LoginModel user = loginRepository.findByUserName(username);
        return user != null && user.getPassword().equals(password) && user.getRole().equals(role);
    }
}