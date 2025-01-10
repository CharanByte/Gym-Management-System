package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import org.springframework.stereotype.Service;

@Service
public interface GymService {

     boolean validateUser(AdminLoginDTO adminLoginDTO);

}
