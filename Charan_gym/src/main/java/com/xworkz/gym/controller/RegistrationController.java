package com.xworkz.gym.controller;

import com.xworkz.gym.constants.GymPackagesEnum;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/")

public class RegistrationController {
    List<GymPackagesEnum> packagesEnumList = new ArrayList<>(Arrays.asList(GymPackagesEnum.values()));

    @GetMapping("/register")
    public String getRegisteration(Model model){
        System.out.println(packagesEnumList);
        model.addAttribute("packagesEnumList",packagesEnumList);
        return "RegistrationForm";
    }
    public String registeration(Model model){
        System.out.println(packagesEnumList);
       // model.addAttribute("packagesEnumList",packagesEnumList);
        return "RegistrationForm";
    }

}
