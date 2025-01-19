package com.xworkz.gym.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="registration_table")
@Data

@NamedQuery(name = "getAllRegistredUsersDetails", query = "select a from RegistrationEntity a")

public class RegistrationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "customer_name")
    private String name;
    @Column(name = "customer_email")
    private String email;
    @Column(name = "customer_password")
    private String password;
    @Column(name = "customer_phoneNumber")
    private long phoneNumber;
    @Column(name = "package")
    private String gympackage;
    @Column(name = "customer_trainer")
    private String trainer;
    @Column(name = "discount")
    private double discount;
    @Column(name = "amount")
    private double amount;
    @Column(name = "amountPaid")
    private double amountPaid;
    @Column(name = "balanceAmount")
    private double balanceAmount;

}
