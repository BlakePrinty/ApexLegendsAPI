package com.blakeprinty.ApexLegendsAPI.controller;

import com.blakeprinty.ApexLegendsAPI.dto.LegendResponse;
import com.blakeprinty.ApexLegendsAPI.dto.LegendSummaryResponse;
import com.blakeprinty.ApexLegendsAPI.service.LegendService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/legends")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:3061")
public class LegendController {
    private final LegendService legendService;

    @GetMapping
    public ResponseEntity<List<LegendSummaryResponse>> getAllLegends() {
        return ResponseEntity.ok(legendService.getAllLegends());
    }

    @GetMapping("/{slug}")
    public ResponseEntity<LegendResponse> getLegend(@PathVariable String slug) {
        return ResponseEntity.ok(legendService.getLegendBySlug(slug));
    }
}
