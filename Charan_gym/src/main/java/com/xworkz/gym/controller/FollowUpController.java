package com.xworkz.gym.controller;

import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/")
public class FollowUpController {
    @Autowired
    private GymService gymService;

    @GetMapping("/followup")
    public String onFollowUp(){

        return "FollowUp";
    }
    @RequestMapping("/followupoperation")
    public String onFindByName(String name, Model model){
        System.out.println(name);
       List<EnquiryEntity> enquiryEntity=gymService.getUserDetailsByName(name);
        System.out.println(enquiryEntity);
        model.addAttribute("list",enquiryEntity);
        return "FollowUp";
    }

    @PostMapping("/updateStatus")
    public String onUpdateEnquiryDetails(){

    }



    }


