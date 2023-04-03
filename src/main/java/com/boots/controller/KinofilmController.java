package com.boots.controller;

import com.boots.entity.Kinofilm;
import com.boots.service.KinofilmService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class KinofilmController {
    private final KinofilmService kinofilmService;

    @GetMapping("/")
    public String kinofilms(@RequestParam(name = "name", required = false) String name, Model model){
        model.addAttribute("kinofilms", kinofilmService.list(name));
        return "index";
    }

    @GetMapping("/index/{id}")
    public String kinofilmInfo(@PathVariable Long id, Model model){
        model.addAttribute("kinofilm", kinofilmService.getKinofilmById(id));

        return "kinofilm-info";
    }


    @PostMapping("/add/create")
    public String createKinofilm(Kinofilm kinofilm){
        kinofilmService.saveKinofilm(kinofilm);
        return "redirect:/";
    }

    @PostMapping("/index/delete/{id}")
    public String deleteKinofilm(@PathVariable Long id){
        kinofilmService.deleteKinofilm(id);
        return "redirect:/";
    }


}
