package com.xworkz.gym.entity;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "admin_table")
@Data
@RequiredArgsConstructor
@NamedQuery(name = "getAllByEmail", query = "select a from AdminEntity a where a.email=:getEmail")
public class AdminEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "admin_email")
    private String email;
    @Column(name = "admin_password")
    private  String password;
}
