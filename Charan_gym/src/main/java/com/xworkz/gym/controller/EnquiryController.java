package com.xworkz.gym.controller;

import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    public String onEnquiry(EnquiryDTO enquiryDTO){
        System.out.println(enquiryDTO);
        gymService.validateCustomerDetails(enquiryDTO);
        return "index";
    }

}
