package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GymService {

     boolean validateAdminUser(AdminLoginDTO adminLoginDTO);

     boolean validateCustomerDetails(EnquiryDTO enquiryDTO);

     AdminEntity getAdminDetails(AdminLoginDTO adminLoginDTO);

     void validAndSaveNewPassword(AdminLoginDTO adminLoginDTO);

    List<EnquiryEntity> getAllUserDetails();

    Long getCountOfAdminUserName(String email);

    int updateUserEnquiryDetails(int enquiryId, String status, String reason);

    List<EnquiryEntity> getAllUserDetailsByStatus(String status);
}
