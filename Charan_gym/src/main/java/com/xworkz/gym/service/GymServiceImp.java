package com.xworkz.gym.service;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.AdminEntity;
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
}
