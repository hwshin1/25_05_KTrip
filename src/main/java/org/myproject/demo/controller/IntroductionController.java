package org.myproject.demo.controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.myproject.demo.vo.KakaoApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/intro")
public class IntroductionController {

    @Autowired
    private KakaoApi kakaoApi;

    @RequestMapping("/home")
    public String introHome() {
        return "intro/introMain";
    }

    @RequestMapping("/Seoul")
    public String introSeoul(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Seoul/FCSeoul";
    }

    @RequestMapping("/Anyang")
    public String introAnyang() {
        return "intro/Anyang/FCAnyang";
    }

    @RequestMapping("/Anyang/restaurant")
    public String showAnyang(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Anyang/FCAnyangRestaurant";
    }

    @RequestMapping("/SuwonFC")
    public String introSuwon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/SuwonFC/SuwonFC";
    }

    @RequestMapping("/Gangwon")
    public String introGangwon() {
        return "intro/Gangwon/GangwonFC";
    }

    @RequestMapping("/Gangwon/restaurant")
    public String showGangwon(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gangwon/GangwonFCRestaurant";
    }

    @RequestMapping("/Gangwon/restaurant2")
    public String showGangwon2(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gangwon/GangwonFCRestaurant2";
    }

    @RequestMapping("/Daejeon")
    public String introDaejeon() {
        return "intro/Daejeon/DaejeonHana";
    }

    @RequestMapping("/Daejeon/restaurant")
    public String showDaejeon(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Daejeon/DaejeonHanaRestaurant";
    }

    @RequestMapping("/Kimcheon")
    public String introKimcheon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Kimcheon/KimcheonSangmu";
    }

    @RequestMapping("/Daegu")
    public String introDaegu() {
        return "intro/Daegu/DaeguFC";
    }

    @RequestMapping("/Daegu/restaurant")
    public String showDaegu(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Daegu/DaeguFCRestaurant";
    }

    @RequestMapping("/Jeonju")
    public String introJeonju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeonju/JeonBukHyunDai";
    }

    @RequestMapping("/Jeonju/restaurant")
    public String showJeonju(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeonju/JeonBukHyunDaiRestaurant";
    }

    @RequestMapping("/Pohang")
    public String introPohang(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Pohang/PohangSteel";
    }

    @RequestMapping("/Ulsan")
    public String introUlSan(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Ulsan/UlsanHD";
    }

    @RequestMapping("/Jeju")
    public String introJeju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeju/JejuSK";
    }

    @RequestMapping("/Jeju/restaurant")
    public String showJeju(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeju/JejuSKResutaurant";
    }

    @RequestMapping("/Gwangju")
    public String introGwangju() {
        return "intro/Gwangju/GwangjuFC";
    }

    @RequestMapping("/Gwangju/restaurant")
    public String showGwangju(Model model) throws FileNotFoundException {

        String javascript_key = kakaoApi.getJavascript_key();

        Gson gson = new Gson();
        Reader reader = new FileReader("restaurants_nearby.json");
        Type type = new TypeToken<List<Map<String, String>>>() {}.getType();

        List<Map<String, String>> restaurants = gson.fromJson(reader, type);

        model.addAttribute("restaurants", restaurants);
        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gwangju/GwangjuFCRestaurant";
    }
}
