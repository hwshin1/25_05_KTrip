package org.myproject.demo.controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.myproject.demo.service.CrawlingService;
import org.myproject.demo.vo.KakaoApi;
import org.myproject.demo.vo.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/crawl")
public class CrawlingController {

    @Autowired
    private CrawlingService crawlingService;

    @Autowired
    private KakaoApi kakaoApi;

    public void team() {
        List<Team> teams = crawlingService.webCrawling();

        System.out.println(teams);
    }

    @GetMapping("/notice")
    @ResponseBody
    public void showHomePage() {
        crawlingService.crawlingNotice();
    }

    @GetMapping("/restaurants")
    public String showRestaurants(Model model) throws IOException {
        String javascript_key = kakaoApi.getJavascript_key();
        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);
        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);
        return "home/restaurantList"; // restaurantList.jsp로 이동
    }
}
