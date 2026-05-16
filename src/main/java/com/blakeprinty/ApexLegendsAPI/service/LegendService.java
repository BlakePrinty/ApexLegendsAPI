package com.blakeprinty.ApexLegendsAPI.service;

import com.blakeprinty.ApexLegendsAPI.model.Legend;
import com.blakeprinty.ApexLegendsAPI.repository.LegendRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LegendService {
    @Autowired
    private LegendRepository legendRepository;

    public List<Legend> getAllLegends() {
        return legendRepository.findAll();
    }

    public Optional<Legend> getLegendById(Long id) {
        return legendRepository.findById(id);
    }

    public Optional<Legend> getLegendByName(String name) {
        return legendRepository.findByNameIgnoreCase(name);
    }

    public List<Legend> getLegendsByRole(String role) {
        return legendRepository.findByRole(role);
    }

    public Legend saveLegend(Legend legend) {
        return legendRepository.save(legend);
    }

    public void deleteLegend(Long id) {
        legendRepository.deleteById(id);
    }
}
