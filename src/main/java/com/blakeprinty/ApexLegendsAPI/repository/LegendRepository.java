package com.blakeprinty.ApexLegendsAPI.repository;

import com.blakeprinty.ApexLegendsAPI.model.Legend;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface LegendRepository extends JpaRepository<Legend, Long> {
    Optional<Legend> findBySlug(String slug);
}
