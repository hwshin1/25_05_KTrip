package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crawl")
public class CrawlingController {

    @Autowired
    private CrawlingService crawlingService;

    public void team() {
        crawlingService.webCrawling();
    }
}
