package com.xworkz.gym.repository;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.AdminEntity;
import com.xworkz.gym.entity.EnquiryEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import java.util.Collections;
import java.util.List;
@Repository
public class GymRepositoryImp implements GymRepository{

    @Autowired
    private EntityManagerFactory entityManagerFactory;

    @Override
    public AdminEntity validateUser(AdminLoginDTO adminLoginDTO) {

        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
       AdminEntity adminEntity=null;
        try {
            et.begin();
            List<AdminEntity> list=em.createNamedQuery("getAllByEmail", AdminEntity.class).setParameter("getEmail",adminLoginDTO.getEmail()).getResultList();

            if(!list.isEmpty()){
                adminEntity=list.get(0);
            }

            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return adminEntity;
    }

    @Override
    public long getCountOfAdminUserName(String email) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
        Object object=em.createNamedQuery("getCountOfAdminUserNameByEmail").setParameter("getEmail",email).getSingleResult();
        System.out.println(object);
           Long count =(Long)object;
        try {
            et.begin();

            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return count;
    }

    @Override
    public void updateAdminPasswordAndCount(AdminEntity adminEntity) {

        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        try {
            et.begin();
            em.merge(adminEntity);
             et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }



    @Override
    public void saveCustomerDetails(EnquiryEntity enquiryEntity) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        try {
            et.begin();
            em.persist(enquiryEntity);
            System.out.println("from repo  "+enquiryEntity);
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }



    @Override
    public List<EnquiryEntity> getUserDetailsByName(String name) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<EnquiryEntity> list= em.createNamedQuery("getUserDetailsByName",EnquiryEntity.class).setParameter("namePattern",name+"%").getResultList();


        try {
            et.begin();

            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return list;
    }



}
