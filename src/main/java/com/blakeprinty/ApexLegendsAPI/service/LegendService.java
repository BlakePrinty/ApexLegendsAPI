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
    private LegendRepository repository;

    public List<Legend> getAllLegends() { return repository.findAll(); }
    public Optional<Legend> getLegendById(Long id) { return repository.findById(id); }
    public Optional<Legend> getLegendByName(String name) { return repository.findByNameIgnoreCase(name); }
    public List<Legend> getLegendsByClass(String legendClass) { return repository.findByLegendClass(legendClass); }
    public Legend saveLegend(Legend legend) { return repository.save(legend); }
    public void deleteLegend(Long id) { repository.deleteById(id); }
}
