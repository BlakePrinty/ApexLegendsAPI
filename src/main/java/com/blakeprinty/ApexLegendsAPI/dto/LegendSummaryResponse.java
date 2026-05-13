package com.blakeprinty.ApexLegendsAPI.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Builder
public class LegendSummaryResponse {
    private Long id;
    private String name;
    private String slug;
    private String role;
    private String portraitUrl;
}
