package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.dto.EnquiryDTO;
import com.xworkz.gym.dto.RegistrationDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.entity.RegistrationEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GymService {

     boolean validateAdminUser(AdminLoginDTO adminLoginDTO);

     boolean validateCustomerEnquiryDetails(EnquiryDTO enquiryDTO);

     AdminEntity getAdminDetails(AdminLoginDTO adminLoginDTO);

     void validAndSaveNewPassword(AdminLoginDTO adminLoginDTO);

    List<EnquiryEntity> getAllEnquiryUsersDetails();

    Long getCountOfAdminUserName(String email);

    int updateUserEnquiryDetails(int enquiryId, String status, String reason);

    List<EnquiryEntity> getAllUserDetailsByStatus(String status);

    boolean validateAndSaveRegistredDetails(RegistrationDTO registrationDTO);

    List<RegistrationEntity> getAllRegistredUsersDetails();

    int upadteRegistredUsersDetails(int id, String gympackage, String trainer, double amountPaid, double balanceAmount);
}
