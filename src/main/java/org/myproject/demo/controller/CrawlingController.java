package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.myproject.demo.vo.KakaoApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
        crawlingService.webCrawling();
    }

    @RequestMapping("/{teamName}/restaurants")
    public String showRestaurants(@PathVariable String teamName, Model model) {
        String javascript_key = kakaoApi.getJavascript_key();
        String region = getRegionByTeam(teamName);

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);
        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);
        return "home/restaurantList"; // restaurantList.jsp로 이동
    }

    private String getRegionByTeam(String teamName) {
        return switch (teamName.toLowerCase()) {
            case "gwangju" -> "광주 월드컵 경기장 근처";
            case "seoul" -> "서울 월드컵 경기장 근처";
            case "daegu" -> "대구 IM 뱅크 파크 근처";
            case "ulsan" -> "울산 문수 축구 경기장 근처";
            case "jeju" -> "제주 월드컵 경기장 근처";
            case "pohang" -> "포항 스틸야드 근처";
            case "jeonju" -> "전주 월드컵 경기장 근처";
            case "suwonfc" -> "수원 종합 운동장 근처";
            case "anyang" -> "안양 종합 운동장 근처";
            case "daejeon" -> "대전 월드컵 경기장 근처";
            case "gangwonch" -> "춘천 송암 스포츠 타운 근처";
            case "gangwong" -> "강릉 하이원 아레나 근처";
            case "kimcheon" -> "김천 종합 운동장 근처";
            default -> "";
        };
    }
}
