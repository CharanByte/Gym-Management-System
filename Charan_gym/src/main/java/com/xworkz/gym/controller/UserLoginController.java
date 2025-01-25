package com.xworkz.gym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UserLoginController {

    @GetMapping("/UserLogin")
    public String onLogin(){
        return "UserLoginPage";
    }
    @PostMapping("/userLogin")
    public String onUserLogin(String email,String password){

        System.out.println(email+password);
        return "";
    }
}
