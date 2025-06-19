package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/crawl")
public class CrawlingController {

    @Autowired
    private CrawlingService crawlingService;

    public void team() {
        List<Team> teams = crawlingService.webCrawling();

        System.out.println(teams);
    }

    @GetMapping("/notice")
    @ResponseBody
    public void showHomePage() {
        crawlingService.crawlingNotice();
    }
}
