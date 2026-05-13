package com.blakeprinty.ApexLegendsAPI.service;

import com.blakeprinty.ApexLegendsAPI.dto.LegendResponse;
import com.blakeprinty.ApexLegendsAPI.dto.LegendSummaryResponse;

import java.util.List;

public interface LegendService {
    List<LegendSummaryResponse> getAllLegends();
    LegendResponse getLegendBySlug(String slug);
}
