package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.dto.RegistrationDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.entity.RegistrationEntity;
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
    public boolean validateCustomerEnquiryDetails(EnquiryDTO enquiryDTO) {
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
        enquiryEntity.setStatus("Enquiry");
        enquiryEntity.setAreaName(enquiryDTO.getAreaName());
        gymRepository.saveCustomerEnquiryDetails(enquiryEntity);
        }
        return valid;
    }

    @Override
    public List<EnquiryEntity> getAllEnquiryUsersDetails() {
        List<EnquiryEntity> enquiryEntity= gymRepository.getAllEnquiryUsersDetails();
        return enquiryEntity;
    }

    @Override
    public int updateUserEnquiryDetails(int enquiryId, String status, String reason) {
        int updatedValue=gymRepository.updateUserEnquiryDetails(enquiryId,status,reason);
        return updatedValue;
    }

    @Override
    public List<EnquiryEntity> getAllUserDetailsByStatus(String status) {

        return gymRepository.getAllUserDetailsByStatus(status);
    }

    @Override
    public boolean validateAndSaveRegistredDetails(RegistrationDTO registrationDTO) {

        RegistrationEntity registrationEntity=new RegistrationEntity();
        registrationEntity.setName(registrationDTO.getName());
        registrationEntity.setEmail(registrationDTO.getEmail());
        registrationEntity.setPassword(registrationDTO.getPassword());
        registrationEntity.setPhoneNumber(registrationDTO.getPhoneNo());
        registrationEntity.setGympackage(registrationDTO.getGympackage());
        registrationEntity.setTrainer(registrationDTO.getTrainer());
        registrationEntity.setDiscount(registrationDTO.getDiscount());
        registrationEntity.setAmount(registrationDTO.getAmount());
        registrationEntity.setAmountPaid(registrationDTO.getAmountPaid());
        registrationEntity.setBalanceAmount(registrationDTO.getBalanceAmount());
        gymRepository.saveRegistredDetails(registrationEntity);
        return true;
    }

    @Override
    public List<RegistrationEntity> getAllRegistredUsersDetails() {

        return gymRepository.getAllRegistredUsersDetails();
    }

    @Override
    public int upadteRegistredUsersDetails(int id, String gympackage, String trainer, double amountPaid, double balanceAmount) {
        int value=gymRepository.upadteRegistredUsersDetails(id,gympackage,trainer,amountPaid,balanceAmount);
    return 1;

    }

}
