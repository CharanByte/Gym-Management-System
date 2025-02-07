package com.xworkz.gym.controller;

import com.xworkz.gym.constants.GymTrainersEnum;
import com.xworkz.gym.dto.TrainerDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.RegistrationEntity;
import com.xworkz.gym.entity.SlotsEntity;
import com.xworkz.gym.entity.TrainerEntity;
import com.xworkz.gym.service.GymService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/")
public class TrainerController {

    List<GymTrainersEnum> gymTrainersEnums = new ArrayList<>(Arrays.asList(GymTrainersEnum.values()));

    @Autowired
    private GymService gymService;

    @GetMapping("/viewtrainer")
    public String viewTrainer(Model model, HttpSession httpSession){
        AdminEntity entity=(AdminEntity) httpSession.getAttribute("adminEntity");
        model.addAttribute("listimg",entity);
        List<TrainerEntity> trainerEntities=gymService.getAllTrainerDetails();
        model.addAttribute("trainerDetails",trainerEntities);
        return "TrainerDetails";
    }
    @GetMapping("/AssignUsers")
    public String assignUser(Model model, HttpSession httpSession){
        AdminEntity entity=(AdminEntity) httpSession.getAttribute("adminEntity");
        model.addAttribute("list",entity);
        List<TrainerEntity> trainerEntities=gymService.getAllTrainerDetails();
        System.out.println("trainerEntities"+trainerEntities);
        model.addAttribute("trainers",trainerEntities);
        List<RegistrationEntity>  registrationEntityList=gymService.getAllRegistredUsersDetails();
        model.addAttribute("users",registrationEntityList);
        return "AssignUsersToTrainers";
    }

    @GetMapping("/addSlots")
    public String addSlots(Model model, HttpSession httpSession){
        AdminEntity entity=(AdminEntity) httpSession.getAttribute("adminEntity");
        model.addAttribute("listimg",entity);
        List<SlotsEntity> slotsEntityList=gymService.getAllSlotsDetails();
        model.addAttribute("slotsEntityList",slotsEntityList);
        System.out.println(slotsEntityList);
        return "AddSlots";
    }
    @GetMapping("/createSlot")
    public String createSlot( Model model, HttpSession httpSession){
        AdminEntity entity=(AdminEntity) httpSession.getAttribute("adminEntity");

        model.addAttribute("profile",entity.getImage());

        return "CreateSlots";
    }


    @GetMapping("/onbuttonclick")
    public  String onTrainerButton(Model model,HttpSession httpSession){
        AdminEntity entity=(AdminEntity) httpSession.getAttribute("adminEntity");
        model.addAttribute("listimg",entity);
        model.addAttribute("trainerList",gymTrainersEnums);

        List<SlotsEntity> slotsEntityList=gymService.getAllSlotsDetails();
        model.addAttribute("slotsEntityList",slotsEntityList);
        return "UpdateTrainer";
    }
    @PostMapping("/updateTrainer")
    public  String onupdate(TrainerDTO trainerDTO,Model model){
        System.out.println(trainerDTO);

        gymService.saveTrainerDetails(trainerDTO);
        model.addAttribute("success","SuccessFully added Slot to "+trainerDTO.getTrainer());
        return "UpdateTrainer";
    }
    @PostMapping("/slot")
    public  String onaddSlot(String startTime,String endTime,String duration,Model model){

        System.out.println(startTime+endTime+duration);
        gymService.saveslots(startTime,endTime,duration);
        List<SlotsEntity> slotsEntityList=gymService.getAllSlotsDetails();
        model.addAttribute("slotsEntityList",slotsEntityList);
        return "AddSlots";
    }

    @PostMapping("/deleteSlot")
    public String onDeleteSlot(int idForDelete,Model model){
        System.out.println(idForDelete);
        int value=gymService.deleteSlotById(idForDelete);
        if(value>=1){
            model.addAttribute("deleteSlot","SuccessFully Deleted Slot");
            return "AddSlots";
        }
        model.addAttribute("deleteSlot","Slot Not Deleted");

        return "AddSlots";
    }
    @PostMapping("/assignUsers")
    public String onAssign(String trainerName,String selectedUserName,Model model){
        System.out.println(trainerName +"  "+selectedUserName);

        List<String> trainerAndSlot = Arrays.asList(selectedUserName.split(","));

        List<String> userNames = Arrays.asList(selectedUserName.split(","));

        gymService.assignUsersToTrainer(trainerAndSlot.get(0), userNames,trainerAndSlot.get(0));
        model.addAttribute("trainerName",trainerName);
        model.addAttribute("assignedUsers",userNames);
        return "DisplayUsersAssignedToTrainer";
    }

}
