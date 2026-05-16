package com.blakeprinty.ApexLegendsAPI.repository;

import com.blakeprinty.ApexLegendsAPI.model.Legend;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface LegendRepository extends JpaRepository<Legend, Long> {
    Optional<Legend> findByNameIgnoreCase(String name);
    List<Legend> findByRole(String role);
}
