package com.xworkz.gym.repository;

import com.xworkz.gym.dto.AdminLoginDTO;
import com.xworkz.gym.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NamedQuery;
import java.time.LocalDateTime;
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
    public void saveCustomerEnquiryDetails(EnquiryEntity enquiryEntity) {
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
    public List<EnquiryEntity> getAllEnquiryUsersDetails() {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<EnquiryEntity> list= em.createNamedQuery("getAllUserDetails",EnquiryEntity.class).getResultList();


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


    @Override
    public int updateUserEnquiryDetails(int enquiryId, String status, String reason, String adminName, LocalDateTime date) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
        int value=0;
        try {
            et.begin();
             value=em.createNamedQuery("updateUserEnquiryDetailsById").setParameter("getStatus",status).setParameter("getReason",reason).setParameter("getUpdatedName",adminName).setParameter("getUpdatedDate",date).setParameter("getId",enquiryId).executeUpdate();
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return value;
    }

    @Override
    public List<EnquiryEntity> getAllUserDetailsByStatus(String status) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<EnquiryEntity> list= em.createNamedQuery("getAllUserDetailsByStatus",EnquiryEntity.class).setParameter("getStatus",status).getResultList();


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

    @Override
    public void saveRegistredDetails(RegistrationEntity registrationEntity) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        try {
            et.begin();
            em.merge(registrationEntity);
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
    public List<RegistrationEntity> getAllRegistredUsersDetails() {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<RegistrationEntity> list= em.createNamedQuery("getAllRegistredUsersDetails",RegistrationEntity.class).getResultList();


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

    @Override
    public int upadteRegistredUsersDetails(int id, String gympackage, String trainer, double amountPaid, double balanceAmount,double totalAmount) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
        int updatedValue=0;
        try {
            et.begin();
             updatedValue=em.createNamedQuery("updateRegistredUserDetails").setParameter("getPackage",gympackage).setParameter("getTrainer",trainer).setParameter("getAmountPaid",amountPaid).setParameter("getBalanceAmount",balanceAmount).setParameter("getAmount",totalAmount).setParameter("getId",id).executeUpdate();
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return updatedValue;
    }

    @Override
    public void saveUserUpdatedEnquiryDetails(UpdatedEnquiryDetailsEntity entity) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(entity);
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
    public void saveUpadteRegistredUsersDetails(UpdatedRegistrationDetailsEntity details) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(details);
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
    public List<UpdatedEnquiryDetailsEntity> getAllViewDetails(int id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<UpdatedEnquiryDetailsEntity> list = em.createNamedQuery("getAllViewDetailsById", UpdatedEnquiryDetailsEntity.class).setParameter("getId",id).getResultList();
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
        return list ;
    }

    @Override
    public List<RegistrationEntity> getAllRegistredUsersDetailsByNameAndPhoneNo(String searchName, Long searchPhoneNo) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<RegistrationEntity> list=em.createNamedQuery("getAllRegistredUsersDetailsByNameAndPhoneNo").setParameter("getName",searchName).setParameter("getPhoneNo",searchPhoneNo).getResultList();
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

    @Override
    public List<UpdatedRegistrationDetailsEntity> getAllRegistredUsersUpdatedDetails(int id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<UpdatedRegistrationDetailsEntity> list=em.createNamedQuery("getAllRegUpdatedDetailsById",UpdatedRegistrationDetailsEntity.class).setParameter("getId",id).getResultList();
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
        return list ;
    }

    @Override
    public List<RegistrationEntity> getAllRegistredUserDetailsById(int id) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();

        List<RegistrationEntity> list=em.createNamedQuery("getAllRegDetailsById",RegistrationEntity.class).setParameter("getId",id).getResultList();
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
        System.out.println(list);
        return list;
    }

    @Override
    public Long getCountOfRegisteredUserEmail(String email) {
        EntityManager em = entityManagerFactory.createEntityManager();
        EntityTransaction et = em.getTransaction();


        Object object=em.createNamedQuery("getCountOfRegistredUserEmail").setParameter("getEmail",email).getSingleResult();
        Long count =(Long) object;
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
        System.out.println(count);
        return count;

    }


}
