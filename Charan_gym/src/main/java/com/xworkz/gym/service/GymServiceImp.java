package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.repository.GymRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GymServiceImp implements GymService{

    @Autowired
    private GymRepository gymRepository;

    @Override
    public boolean validateUser(AdminLoginDTO adminLoginDTO) {
      AdminEntity adminEntity=gymRepository.validateUser(adminLoginDTO);
        System.out.println(adminEntity);
        if(adminEntity!=null && adminLoginDTO.getPassword().equals(adminEntity.getPassword())){
            return  true;
        }
        return false;
    }

    @Override
    public void validateCustomerDetails(EnquiryDTO enquiryDTO) {
        EnquiryEntity enquiryEntity=new EnquiryEntity();
        enquiryEntity.setName(enquiryDTO.getName());
        enquiryEntity.setEmail(enquiryDTO.getEmail());
        enquiryEntity.setPhoneNumber(enquiryDTO.getPhoneNumber());
        enquiryEntity.setAge(enquiryDTO.getAge());
        enquiryEntity.setGender(enquiryDTO.getGender());
        enquiryEntity.setAddress(enquiryDTO.getAddress());
        enquiryEntity.setCountry(enquiryDTO.getCountry());
        enquiryEntity.setCityName(enquiryDTO.getCityName());
        gymRepository.saveCustomerDetails(enquiryEntity);
    }
}
