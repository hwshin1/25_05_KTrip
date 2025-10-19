package org.myproject.demo.controller;

import org.myproject.demo.service.CrawlingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/intro")
public class IntroductionController {

    @Value("${kakao.javascript_key}")
    private String kakaoApiJavaScriptKey;

    @Autowired
    private CrawlingService crawlingService;

    @RequestMapping("/home")
    public String introHome() {
        return "teamPage/introMain";
    }

    @RequestMapping("/Seoul")
    public String introSeoul() {
        return "teamPage/Seoul/FCSeoul";
    }

    @RequestMapping("/Seoul/restaurant")
    public String showSeoul(Model model) {

        String teamName = "Seoul";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Seoul/FCSeoulRestaurant";
    }

    @RequestMapping("/Anyang")
    public String introAnyang() {
        return "teamPage/Anyang/FCAnyang";
    }

    @RequestMapping("/Anyang/restaurant")
    public String showAnyang(Model model) {

        String teamName = "Anyang";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Anyang/FCAnyangRestaurant";
    }

    @RequestMapping("/SuwonFC")
    public String introSuwon() {
        return "teamPage/SuwonFC/SuwonFC";
    }

    @RequestMapping("/SuwonFC/restaurant")
    public String showSuwonFC(Model model) {

        String teamName = "SuwonFC";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/SuwonFC/SuwonFCRestaurant";
    }

    @RequestMapping("/Gangwon")
    public String introGangwon() {
        return "teamPage/Gangwon/GangwonFC";
    }

    @RequestMapping("/GangwonCh/restaurant")
    public String showGangwon(Model model) {

        String teamName = "GangwonCh";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Gangwon/GangwonFCRestaurant";
    }

    @RequestMapping("/GangwonG/restaurant")
    public String showGangwon2(Model model) {

        String teamName = "GangwonG";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Gangwon/GangwonFCRestaurant2";
    }

    @RequestMapping("/Daejeon")
    public String introDaejeon() {
        return "teamPage/Daejeon/DaejeonHana";
    }

    @RequestMapping("/Daejeon/restaurant")
    public String showDaejeon(Model model) {

        String teamName = "Daejeon";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Daejeon/DaejeonHanaRestaurant";
    }

    @RequestMapping("/Kimcheon")
    public String introKimcheon() {
        return "teamPage/Kimcheon/KimcheonSangmu";
    }

    @RequestMapping("/Kimcheon/restaurant")
    public String showKimcheon(Model model) {

        String teamName = "Kimcheon";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Kimcheon/KimcheonSangmuRestaurant";
    }

    @RequestMapping("/Daegu")
    public String introDaegu() {
        return "teamPage/Daegu/DaeguFC";
    }

    @RequestMapping("/Daegu/restaurant")
    public String showDaegu(Model model) {

        String teamName = "Daegu";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Daegu/DaeguFCRestaurant";
    }

    @RequestMapping("/Jeonju")
    public String introJeonju() {
        return "teamPage/Jeonju/JeonBukHyunDai";
    }

    @RequestMapping("/Jeonju/restaurant")
    public String showJeonju(Model model) {

        String teamName = "Jeonju";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Jeonju/JeonBukHyunDaiRestaurant";
    }

    @RequestMapping("/Pohang")
    public String introPohang() {
        return "teamPage/Pohang/PohangSteel";
    }

    @RequestMapping("/Pohang/restaurant")
    public String showPohang(Model model) {

        String teamName = "Pohang";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Pohang/PohangSteelRestaurant";
    }

    @RequestMapping("/Ulsan")
    public String introUlSan() {
        return "teamPage/Ulsan/UlsanHD";
    }

    @RequestMapping("/Ulsan/restaurant")
    public String showUlsan(Model model) {

        String teamName = "Ulsan";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Ulsan/UlsanHDRestaurant";
    }

    @RequestMapping("/Jeju")
    public String introJeju() {
        return "teamPage/Jeju/JejuSK";
    }

    @RequestMapping("/Jeju/restaurant")
    public String showJeju(Model model) {

        String teamName = "Jeju";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Jeju/JejuSKResutaurant";
    }

    @RequestMapping("/Gwangju")
    public String introGwangju() {
        return "teamPage/Gwangju/GwangjuFC";
    }

    @RequestMapping("/Gwangju/restaurant")
    public String showGwangju(Model model) {

        String teamName = "Gwangju";

        String region = getRegionByTeam(teamName);
        String javascript_key = kakaoApiJavaScriptKey;

        List<Map<String, String>> restaurants = crawlingService.crawlingNotice(region);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "teamPage/Gwangju/GwangjuFCRestaurant";
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
