package com.xworkz.gym.controller;

import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class EnquiryController {

    @Autowired
    private GymService gymService;
    @GetMapping("/enquiry")
    public String enquiry(){
        return "Enquiry";
    }
    @PostMapping("/enquiry")
    public String SubmitEnquiryDetails(EnquiryDTO enquiryDTO, Model model){
        System.out.println(enquiryDTO);
        boolean valid=gymService.validateCustomerDetails(enquiryDTO);
        if(valid){
           model.addAttribute("enquiryDTO",enquiryDTO);
           return "DisplayEnquiryDetails";
        }
        return "index";
    }

}
