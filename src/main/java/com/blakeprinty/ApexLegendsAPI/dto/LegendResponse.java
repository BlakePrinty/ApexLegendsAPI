package com.blakeprinty.ApexLegendsAPI.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Builder
public class LegendResponse {
    private Long id;
    private String name;
    private String slug;
    private String role;

    private String realName;
    private Integer age;
    private String homeWorld;

    private String description;
    private String portraitUrl;
}
