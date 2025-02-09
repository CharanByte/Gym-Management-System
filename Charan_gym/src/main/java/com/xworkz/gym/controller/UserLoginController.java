package com.xworkz.gym.controller;

import com.xworkz.gym.constants.ProfileImagePath;
import com.xworkz.gym.dto.RegistrationDTO;
import com.xworkz.gym.entity.RegistrationEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

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

           model.addAttribute("list",registrationEntity);
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

    @GetMapping("/updateProfile")
    public String onUpdate(HttpSession httpSession,Model model){
        RegistrationEntity entity1=(RegistrationEntity) httpSession.getAttribute("userRegEntity");
        int id=entity1.getId();
        RegistrationEntity entity=gymService.getAllRegistredUsersDetailsById(id);
        model.addAttribute("entity",entity);
        return "UpdateUserProfile";
    }
    @GetMapping("/trainerAndSlot")
    public String ontrainerAndSlot(HttpSession httpSession,Model model){

        return "DisplayUserTrainerAndSlot";
    }


    @PostMapping("/updateUserProfile")
    public String onupdate(@RequestParam("thisfile") MultipartFile multipartFile, RegistrationDTO registrationDTO, Model model,HttpSession httpSession) throws IOException {
        RegistrationEntity entity1 = (RegistrationEntity) httpSession.getAttribute("userRegEntity");
        int id = entity1.getId();
        String filePath;

        if (multipartFile.isEmpty()) {
            return "UpdateUserDetails.jsp";
        } else {
            System.out.println(multipartFile);
            System.out.println(multipartFile.getOriginalFilename());
            byte[] bytes = multipartFile.getBytes();
            Path path = Paths.get(ProfileImagePath.ProfileImagePath.getPath() + System.currentTimeMillis() + ".jpg");
            Files.write(path, bytes);
            filePath = path.getFileName().toString();
        }
        int updatedValue=gymService.updateUserProfile(registrationDTO,filePath,id);
        if(updatedValue>0) {
            RegistrationEntity entity=gymService.getAllRegistredUsersDetailsById(id);
           model.addAttribute("list",entity);
            return "UserPage";
        }
        return "UserPage";
    }




}
