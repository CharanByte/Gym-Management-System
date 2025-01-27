package com.xworkz.gym.controller;

import com.xworkz.gym.entity.RegistrationEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class UserLoginController {

    @Autowired
    private GymService gymService;
    @GetMapping("/UserLogin")
    public String onLogin(){
        return "UserLoginPage";
    }
    @PostMapping("/userLogin")
    public String onUserLogin(String useremail, String password, Model model, HttpSession httpSession){
        RegistrationEntity registrationEntity=gymService.getAllRegistredUsersDetailsByEmail(useremail);
            httpSession.setAttribute("userRegEntity",registrationEntity);
       int valid=gymService.validteUserPasswordNyEmail(useremail,password);
       if(valid==1){
           model.addAttribute("userEmail",useremail);
          return "SetNewUserPassword";
       }
       if(valid==2){
           System.out.println("login Successfull");
           return "UserPage";
       }
       if(valid==3){
           System.out.println("wrong password");
           model.addAttribute("invalidPassword","Incorrect Password");
           return "UserLoginPage";
       }
        if(valid==4){
            System.out.println("wrong password acount locked");
            model.addAttribute("locked","Your account has been Locked");
            return "UserLoginPage";
        }
     if(valid==5){
         model.addAttribute("tryafter2min","Your account has been Locked Please Try After 2 Min");
         return "UserLoginPage";
     }

        return "UserLoginPage";
    }

    @PostMapping("/setuserPassword")
    public String onResetPassword(String password,String confirmpassword,HttpSession httpSession,Model model){
        RegistrationEntity entity=(RegistrationEntity) httpSession.getAttribute("userRegEntity");
        int id=entity.getId();
        System.out.println(id);
        int value=gymService.validateAndupdateNewPassword(id,password,confirmpassword);
        if(value>0){
            model.addAttribute("Setnewpassword","Successfully updated New Password");
            return "SetNewUserPassword";
        }
        model.addAttribute("notSetnewpassword","New Password Not Updated");
        return "SetNewUserPassword";
    }
}
