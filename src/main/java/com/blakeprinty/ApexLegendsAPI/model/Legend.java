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
    private String role;
    private String description;
    private String passiveAbility;
    private String tacticalAbility;
    private String ultimateAbility;
}
