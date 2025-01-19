package com.xworkz.gym.controller;

import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/")
public class FollowUpController {
    @Autowired
    private GymService gymService;

    @GetMapping("/followup")
    public String onFollowUp(Model model){
        List<EnquiryEntity> enquiryEntity=gymService.getAllEnquiryUsersDetails();
        System.out.println(enquiryEntity);
        if(!enquiryEntity.isEmpty()){
            model.addAttribute("list",enquiryEntity);
            return "FollowUp";
        }
        return "FollowUp";
    }
    @RequestMapping("/followupoperation")
    public String filterByStatus(String status, Model model){
        System.out.println(status);
       List<EnquiryEntity> enquiryEntity=gymService.getAllUserDetailsByStatus(status);
        System.out.println(enquiryEntity);
        if(!enquiryEntity.isEmpty()){
            model.addAttribute("list",enquiryEntity);
            return "FollowUp";
        }
        model.addAttribute("failure","No enquiry records found on '"+status+"' status");
        return "FollowUp";
    }

    @RequestMapping(value = "/updateStatus", method = RequestMethod.POST)
    public String updateStatus(@RequestParam("enquiryId") int enquiryId,@RequestParam("enquiryName") String enquiryName, @RequestParam("status") String status, @RequestParam("reason") String reason,Model model) {

        int updatedValue=gymService.updateUserEnquiryDetails(enquiryId,status,reason);
        if(updatedValue>0){
        model.addAttribute("enquiryName","Successfully Updated Details Of "+ enquiryName);
        }
        else {
            model.addAttribute("notupdated","Failed to Update Details of "+enquiryName);
        }
        return "FollowUp";
    }



    }


