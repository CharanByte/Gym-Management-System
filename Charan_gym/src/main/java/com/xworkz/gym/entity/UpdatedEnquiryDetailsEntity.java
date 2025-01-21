package com.xworkz.gym.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name ="enquiryupdate_table" )
public class UpdatedEnquiryDetailsEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id_up;

    private String customer_status;
    private  String customer_reason;
    private int id;
}
