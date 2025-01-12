package com.xworkz.gym.controller;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AdminLoginController {

    @Autowired
    private GymService gymService;

    public AdminLoginController(){
        System.out.println("created AdminLoginController");
    }

    @PostMapping("/adminLogin")
    public String onLigin(AdminLoginDTO adminLoginDTO, Model model){
        System.out.println(adminLoginDTO);
        boolean valid=gymService.validateUser(adminLoginDTO);
        if(valid) {

            return "AdminPage";
        }
        return "AdminLogin";
    }


}
