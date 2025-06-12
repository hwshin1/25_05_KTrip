package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CrawlingController {
    @Autowired
    private CrawlingService crawlingService;

    @RequestMapping("/Logo")
    public String showLogo(int id, Model model) {
        Team team = crawlingService.teamListLogo(id);

        model.addAttribute("team", team);

        System.out.println(team);

        return "home/main";
    }
}
