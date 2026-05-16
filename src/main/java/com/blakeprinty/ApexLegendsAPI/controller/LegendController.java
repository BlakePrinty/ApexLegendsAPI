package com.blakeprinty.ApexLegendsAPI.controller;

import com.blakeprinty.ApexLegendsAPI.model.Legend;
import com.blakeprinty.ApexLegendsAPI.service.LegendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/legends")
public class LegendController {
    @Autowired
    private LegendService legendService;

    @GetMapping
    public List<Legend> getAll() {
        return legendService.getAllLegends();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Legend> getById(@PathVariable Long id) {
        return legendService.getLegendById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/name/{name}")
    public ResponseEntity<Legend> getByName(@PathVariable String name) {
        return legendService.getLegendByName(name)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/role/{role}")
    public List<Legend> getByRole(@PathVariable String role) {
        return legendService.getLegendsByRole(role);
    }

    @PostMapping
    public Legend create(@RequestBody Legend legend) {
        return legendService.saveLegend(legend);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        legendService.deleteLegend(id);
        return ResponseEntity.noContent().build();
    }
}
