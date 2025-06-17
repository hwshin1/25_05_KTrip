package org.myproject.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro")
public class IntroductionController {

    @RequestMapping("/home")
    public String introHome() {
        return "intro/introMain";
    }

    @RequestMapping("/Seoul")
    public String introSeoul() {
        return "intro/FCSeoul";
    }

    @RequestMapping("/Anyang")
    public String introAnyang() {
        return "intro/FCAnyang";
    }

    @RequestMapping("/SuwonFC")
    public String introSuwon() {
        return "intro/SuwonFC";
    }

    @RequestMapping("/Gangwon")
    public String introGangwon() {
        return "intro/GangwonFC";
    }

    @RequestMapping("/Daejeon")
    public String introDaejeon() {
        return "intro/DaejeonHana";
    }

    @RequestMapping("/Kimcheon")
    public String introKimcheon() {
        return "intro/KimcheonSangmu";
    }

    @RequestMapping("/Daegu")
    public String introDaegu() {
        return "intro/DaeguFC";
    }

    @RequestMapping("/Jeonju")
    public String introJeonju() {
        return "intro/JeonBukHyunDai";
    }

    @RequestMapping("/Pohang")
    public String introPohang() {
        return "intro/PohangSteel";
    }

    @RequestMapping("/Ulsan")
    public String introUlSan() {
        return "intro/UlSanHD";
    }

    @RequestMapping("/Jeju")
    public String introJeju() {
        return "intro/JejuSK";
    }
}
