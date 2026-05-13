package com.blakeprinty.ApexLegendsAPI.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "legends")
@Getter @Setter @NoArgsConstructor @AllArgsConstructor
public class Legend {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String slug;
    private String role;

    private String realName;
    private Integer age;
    private String homeWorld;

    @Column(length = 2000)
    private String description;

    private String portraitUrl;
}
