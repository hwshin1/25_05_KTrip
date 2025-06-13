package org.myproject.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @Autowired
    private CrawlingController crawlingController;

    @RequestMapping("/home/main")
    public String homeMain(Model model) {
        crawlingController.showLogo(model);
        return "home/main";
    }

    @RequestMapping("/")
    public String showMain(){
        return "redirect:/home/main";
    }
}
