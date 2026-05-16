package com.blakeprinty.ApexLegendsAPI.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "legends")
@Getter
@Setter
public class Legend {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String realName;
    private int age;
    private String homeWorld;
    private String legendClass;

    private String tacticalName;
    private String tacticalDescription;

    private String passiveName;
    private String passiveDescription;

    private String ultimateName;
    private String ultimateDescription;

    private String imagePath;
}
