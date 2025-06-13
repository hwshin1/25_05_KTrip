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

    public String showLogo(Model model) {
        int id;

        for (id = 1; id <= 12; id++) {
            Team team = crawlingService.teamListLogo(id);

            if (id == 1) {
                model.addAttribute("team1", team);
            }
            if (id == 2) {
                model.addAttribute("team2", team);
            }
            if (id == 3) {
                model.addAttribute("team3", team);
            }
            if (id == 4) {
                model.addAttribute("team4", team);
            }
            if (id == 5) {
                model.addAttribute("team5", team);
            }
            if (id == 6) {
                model.addAttribute("team6", team);
            }
            if (id == 7) {
                model.addAttribute("team7", team);
            }
            if (id == 8) {
                model.addAttribute("team8", team);
            }
            if (id == 9) {
                model.addAttribute("team9", team);
            }

            if (id == 10) {
                model.addAttribute("team10", team);
            }

            if (id == 11) {
                model.addAttribute("team11", team);
            }
            if (id == 12) {
                model.addAttribute("team12", team);
                break;
            }
        }

        return "home/main";
    }
}
