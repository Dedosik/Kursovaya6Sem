package com.boots.service;

import com.boots.entity.Kinofilm;
import com.boots.repository.KinofilmRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class KinofilmService {
    private final KinofilmRepository kinofilmRepository;


    public List<Kinofilm> list(String name) {
    if(name != null) kinofilmRepository.findByName(name);
        return kinofilmRepository.findAll();
    }

    public void saveKinofilm(Kinofilm kinofilm){
        log.info("Saving new {}", kinofilm);
        kinofilmRepository.save(kinofilm);
    }

    public void deleteKinofilm(Long id){
        kinofilmRepository.deleteById(id);
    }

    public Kinofilm getKinofilmById(Long id) {
       return kinofilmRepository.findById(id).orElse(null);
    }
}
