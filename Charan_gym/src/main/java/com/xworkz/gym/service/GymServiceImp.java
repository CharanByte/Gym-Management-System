package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.repository.GymRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class GymServiceImp implements GymService{

    @Autowired
    private GymRepository gymRepository;
    private  final BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();



    @Override
    public boolean validateAdminUser(AdminLoginDTO adminLoginDTO) {
      AdminEntity adminEntity=gymRepository.validateUser(adminLoginDTO);
        System.out.println(adminEntity);
        if(adminEntity!=null && bCryptPasswordEncoder.matches(adminLoginDTO.getPassword(),adminEntity.getPassword())){
            return  true;
        }
        return false;
    }
    @Override
    public Long getCountOfAdminUserName(String email) {
       long count= gymRepository.getCountOfAdminUserName(email);
        return count;
    }

    @Override
    public void validAndSaveNewPassword(AdminLoginDTO adminLoginDTO) {
        if(adminLoginDTO.getPassword()!=null){
            String encodedPassword=bCryptPasswordEncoder.encode(adminLoginDTO.getPassword());
            AdminEntity adminEntity=gymRepository.validateUser(adminLoginDTO);
            adminEntity.setPassword(encodedPassword);
            adminEntity.setLogin_count(0);
            gymRepository.updateAdminPasswordAndCount(adminEntity);
        }
    }


    @Override
    public AdminEntity getAdminDetails(AdminLoginDTO adminLoginDTO) {

        return gymRepository.validateUser(adminLoginDTO);
    }



    @Override
    public boolean validateCustomerDetails(EnquiryDTO enquiryDTO) {
        boolean valid=true;
        String name=enquiryDTO.getName();
        if(name!=null && name.length()>1 && name.length()<30){
            System.out.println("name is valid");
        }
        else {
            valid=false;
            System.out.println("name is in valid");
        }
        String email=enquiryDTO.getEmail();
        if(email!=null && (email.contains("@gmail.com")||email.contains(".in"))){
            System.out.println("email valid");
        }
        else {
            valid=false;
            System.out.println("email Invalid");
        }
        String phoneNo= String.valueOf(enquiryDTO.getPhoneNumber());
        if(phoneNo!=null && phoneNo.length()==10){
            System.out.println("phoneNo valid");
        }
        else {
            valid=false;
            System.out.println("phoneNo Invalid");
        }
        int age=enquiryDTO.getAge();
        if(age>=12){
            System.out.println("age valid");
        }
        else {
            valid=false;
            System.out.println("age Invalid");
        }

        if(valid){
        EnquiryEntity enquiryEntity=new EnquiryEntity();
        enquiryEntity.setName(enquiryDTO.getName());
        enquiryEntity.setEmail(enquiryDTO.getEmail());
        enquiryEntity.setPhoneNumber(enquiryDTO.getPhoneNumber());
        enquiryEntity.setAge(enquiryDTO.getAge());
        enquiryEntity.setGender(enquiryDTO.getGender());
        enquiryEntity.setAddress(enquiryDTO.getAddress());
        enquiryEntity.setStatus(enquiryDTO.getStatus());
        enquiryEntity.setAreaName(enquiryDTO.getAreaName());
        gymRepository.saveCustomerDetails(enquiryEntity);
        }
        return valid;
    }

    @Override
    public List<EnquiryEntity> getUserDetailsByName(String name) {
        List<EnquiryEntity> enquiryEntity= gymRepository.getUserDetailsByName(name);
        return enquiryEntity;
    }



}
