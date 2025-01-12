package com.xworkz.gym.repository;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import org.springframework.stereotype.Repository;

@Repository
public interface GymRepository {
    AdminEntity validateUser(AdminLoginDTO adminLoginDTO);

    void saveCustomerDetails(EnquiryEntity enquiryEntity);
}
