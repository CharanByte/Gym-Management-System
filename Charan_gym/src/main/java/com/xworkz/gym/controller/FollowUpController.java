package com.xworkz.gym.controller;

import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class FollowUpController {
    @Autowired
    private GymService gymService;

//    @RequestMapping("/submit1")
//    public String onFindByName(String name, Model model){
//        System.out.println(name);
//        EnquiryEntity enquiryEntity=gymService.getUserDetailsByName(name);
//        System.out.println(enquiryEntity);
//        model.addAttribute("user",enquiryEntity );
//        return "success";
//    }



        @PostMapping("/submitFirstFom")
        public String handleFirstForm(String firstInput) {
            // Process the first form input (e.g., save it, validate, etc.)
            System.out.println("First Form Submitted with: " + firstInput);
            return "FollowUp"; // Redirect back to the same page
        }

        @PostMapping("/submitSecondForm")
        public String handleSecondForm(String secondInput) {
            // Process the second form input (e.g., save it, validate, etc.)
            System.out.println("Second Form Submitted with: " + secondInput);
            return "success"; // Redirect or display a success message
        }
    }


