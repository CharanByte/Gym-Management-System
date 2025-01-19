package com.xworkz.gym.repository;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import com.xworkz.gym.entity.RegistrationEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GymRepository {
    AdminEntity validateUser(AdminLoginDTO adminLoginDTO);

    void saveCustomerEnquiryDetails(EnquiryEntity enquiryEntity);

    void updateAdminPasswordAndCount(AdminEntity adminEntity);

    List<EnquiryEntity> getAllEnquiryUsersDetails();

    long getCountOfAdminUserName(String email);

    int updateUserEnquiryDetails(int enquiryId, String status, String reason);

    List<EnquiryEntity> getAllUserDetailsByStatus(String status);

    void saveRegistredDetails(RegistrationEntity registrationEntity);

    List<RegistrationEntity> getAllRegistredUsersDetails();

    int upadteRegistredUsersDetails(int id, String gympackage, String trainer, double amountPaid, double balanceAmount);
}
