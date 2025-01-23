package com.xworkz.gym.restcontroller;

import com.xworkz.gym.entity.RegistrationEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/")
public class RegistredUserSearchRestController {
    @Autowired
    private GymService gymService;

    @GetMapping("/search")
    public String search(@RequestParam String searchName,@RequestParam Long searchPhoneNo) {

      List<RegistrationEntity> registrationEntityList=gymService.getAllRegistredUsersDetailsByNameAndPhoneNo(searchName,searchPhoneNo);
        if(registrationEntityList.isEmpty()){

            return "Please enter valid Name and Phone Number";
    }
        return "";
    }
}
