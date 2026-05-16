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
    private LegendService service;

    @GetMapping
    public List<Legend> getAll() { return service.getAllLegends(); }

    @GetMapping("/{id}")
    public ResponseEntity<Legend> getById(@PathVariable Long id) {
        return service.getLegendById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/name/{name}")
    public ResponseEntity<Legend> getByName(@PathVariable String name) {
        return service.getLegendByName(name)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/class/{legendClass}")
    public List<Legend> getByClass(@PathVariable String legendClass) {
        return service.getLegendsByClass(legendClass);
    }

    @PostMapping
    public Legend create(@RequestBody Legend legend) { return service.saveLegend(legend); }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        service.deleteLegend(id);
        return ResponseEntity.noContent().build();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Legend> update(@PathVariable Long id, @RequestBody Legend updated) {
        return service.getLegendById(id).map(existing -> {
            existing.setName(updated.getName());
            existing.setRealName(updated.getRealName());
            existing.setAge(updated.getAge());
            existing.setHomeWorld(updated.getHomeWorld());
            existing.setLegendClass(updated.getLegendClass());
            existing.setTacticalName(updated.getTacticalName());
            existing.setTacticalDescription(updated.getTacticalDescription());
            existing.setPassiveName(updated.getPassiveName());
            existing.setPassiveDescription(updated.getPassiveDescription());
            existing.setUltimateName(updated.getUltimateName());
            existing.setUltimateDescription(updated.getUltimateDescription());
            existing.setImagePath(updated.getImagePath());
            return ResponseEntity.ok(service.saveLegend(existing));
        }).orElse(ResponseEntity.notFound().build());
    }
}
