package com.xworkz.gym.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "enquiry_table")
@Data
@RequiredArgsConstructor
@NamedQuery(name = "getUserDetailsByName", query = "select a from EnquiryEntity a WHERE a.name LIKE:namePattern")

public class EnquiryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "customer_name")
    private String name;
    @Column(name = "customer_email")
    private String email;
    @Column(name = "customer_phoneNumber")
    private long phoneNumber;
    @Column(name = "customer_age")
    private int age;
    @Column(name = "customer_gender")
    private String gender;
    @Column(name = "customer_address")
    private String address;
    @Column(name = "customer_status")
    private String status;
    @Column(name = "customer_area")
    private String areaName;

}
