package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CrawlingController {

    @Autowired
    private CrawlingService crawlingService;

    @RequestMapping("/home/main")
    public String showLogo(Model model) {

        for (int id = 1; id <= 12; id++) {
            Team team = crawlingService.teamListLogo(id);
            model.addAttribute("team"+ id, team);
        }

        return "home/main";
    }
}
