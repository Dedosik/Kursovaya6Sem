package com.boots.repository;

import com.boots.entity.Kinofilm;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface KinofilmRepository extends JpaRepository<Kinofilm,Long> {
    List<Kinofilm> findByName(String name);
}
