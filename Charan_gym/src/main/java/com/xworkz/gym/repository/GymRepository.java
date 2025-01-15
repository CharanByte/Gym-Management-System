package com.xworkz.gym.repository;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GymRepository {
    AdminEntity validateUser(AdminLoginDTO adminLoginDTO);

    void saveCustomerDetails(EnquiryEntity enquiryEntity);

    void updateAdminPasswordAndCount(AdminEntity adminEntity);

    EnquiryEntity getUserDetailsByName(String name);

    long getCountOfAdminUserName(String email);
}
