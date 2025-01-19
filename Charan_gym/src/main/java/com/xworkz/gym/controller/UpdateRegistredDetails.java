package com.xworkz.gym.controller;

import com.xworkz.gym.constants.GymPackagesEnum;
import com.xworkz.gym.constants.GymTrainersEnum;
import com.xworkz.gym.entity.RegistrationEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/")
public class UpdateRegistredDetails {

    List<GymPackagesEnum> packagesEnumList = new ArrayList<>(Arrays.asList(GymPackagesEnum.values()));
    List<GymTrainersEnum> gymTrainersEnums = new ArrayList<>(Arrays.asList(GymTrainersEnum.values()));

    @Autowired
    private GymService gymService;

    @GetMapping("/registrationUpdate")
    public String onUpdate(Model model){
        List<RegistrationEntity> registrationEntityList=gymService.getAllRegistredUsersDetails();
        model.addAttribute("list",registrationEntityList);
        return "RegistredUsersSearch";
    }

    @RequestMapping(value = "/updatebutton", method = RequestMethod.POST)
    public String onupdatebutton(@RequestParam("id") int id,@RequestParam("name") String name, @RequestParam("phoneNumber") long phoneNumber, @RequestParam("gympackage") String gympackage, @RequestParam("trainer") String trainer,@RequestParam("balanceAmount") String balanceAmount, Model model) {

        System.out.println(trainer+gympackage);
        model.addAttribute("id",id);
       model.addAttribute("name",name);
        model.addAttribute("phoneNumber",phoneNumber);
        model.addAttribute("packag",gympackage);
        model.addAttribute("trainer",trainer);
        model.addAttribute("balanceAmount",balanceAmount);
        model.addAttribute("packagesEnumList", packagesEnumList);
        model.addAttribute("gymTrainersEnums", gymTrainersEnums);

        return "UpdateRegistredDetails";
    }

    @PostMapping("/updateRegister")
    public String onRegistredDetailsUpdate(int id,String gympackage,String trainer,double amountPaid,double balanceAmount){
        System.out.println(id+gympackage+trainer+amountPaid+balanceAmount);
        int updatedVlaue=gymService.upadteRegistredUsersDetails(id,gympackage,trainer,amountPaid,balanceAmount);
        return "UpdateRegistredDetails";
    }

}
