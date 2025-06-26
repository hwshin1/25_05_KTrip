package org.myproject.demo.controller;

import org.myproject.demo.vo.KakaoApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String introSeoul() {
        return "intro/Seoul/FCSeoul";
    }

    @RequestMapping("/Seoul/restaurant")
    public String showSeoul(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Seoul/FCSeoulRestaurant";
    }

    @RequestMapping("/Anyang")
    public String introAnyang() {
        return "intro/Anyang/FCAnyang";
    }

    @RequestMapping("/Anyang/restaurant")
    public String showAnyang(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Anyang/FCAnyangRestaurant";
    }

    @RequestMapping("/SuwonFC")
    public String introSuwon() {
        return "intro/SuwonFC/SuwonFC";
    }

    @RequestMapping("/SuwonFC/restaurant")
    public String showSuwonFC(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/SuwonFC/SuwonFCRestaurant";
    }

    @RequestMapping("/Gangwon")
    public String introGangwon() {
        return "intro/Gangwon/GangwonFC";
    }

    @RequestMapping("/Gangwon/restaurant")
    public String showGangwon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gangwon/GangwonFCRestaurant";
    }

    @RequestMapping("/Gangwon/restaurant2")
    public String showGangwon2(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gangwon/GangwonFCRestaurant2";
    }

    @RequestMapping("/Daejeon")
    public String introDaejeon() {
        return "intro/Daejeon/DaejeonHana";
    }

    @RequestMapping("/Daejeon/restaurant")
    public String showDaejeon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Daejeon/DaejeonHanaRestaurant";
    }

    @RequestMapping("/Kimcheon")
    public String introKimcheon() {
        return "intro/Kimcheon/KimcheonSangmu";
    }

    @RequestMapping("/Kimcheon/restaurant")
    public String showKimcheon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Kimcheon/KimcheonSangmuRestaurant";
    }

    @RequestMapping("/Daegu")
    public String introDaegu() {
        return "intro/Daegu/DaeguFC";
    }

    @RequestMapping("/Daegu/restaurant")
    public String showDaegu(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Daegu/DaeguFCRestaurant";
    }

    @RequestMapping("/Jeonju")
    public String introJeonju() {
        return "intro/Jeonju/JeonBukHyunDai";
    }

    @RequestMapping("/Jeonju/restaurant")
    public String showJeonju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeonju/JeonBukHyunDaiRestaurant";
    }

    @RequestMapping("/Pohang")
    public String introPohang() {
        return "intro/Pohang/PohangSteel";
    }

    @RequestMapping("/Pohang/restaurant")
    public String showPohang(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Pohang/PohangSteelRestaurant";
    }

    @RequestMapping("/Ulsan")
    public String introUlSan() {
        return "intro/Ulsan/UlsanHD";
    }

    @RequestMapping("/Ulsan/restaurant")
    public String showUlsan(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Ulsan/UlsanHDRestaurant";
    }

    @RequestMapping("/Jeju")
    public String introJeju() {
        return "intro/Jeju/JejuSK";
    }

    @RequestMapping("/Jeju/restaurant")
    public String showJeju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Jeju/JejuSKResutaurant";
    }

    @RequestMapping("/Gwangju")
    public String introGwangju() {
        return "intro/Gwangju/GwangjuFC";
    }

    @RequestMapping("/Gwangju/restaurant")
    public String showGwangju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/Gwangju/GwangjuFCRestaurant";
    }
}
