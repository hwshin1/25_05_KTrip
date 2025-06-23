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
    public String introSeoul(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/FCSeoul";
    }

    @RequestMapping("/Anyang")
    public String introAnyang(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/FCAnyang";
    }

    @RequestMapping("/SuwonFC")
    public String introSuwon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/SuwonFC";
    }

    @RequestMapping("/Gangwon")
    public String introGangwon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/GangwonFC";
    }

    @RequestMapping("/Daejeon")
    public String introDaejeon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/DaejeonHana";
    }

    @RequestMapping("/Kimcheon")
    public String introKimcheon(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/KimcheonSangmu";
    }

    @RequestMapping("/Daegu")
    public String introDaegu(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/DaeguFC";
    }

    @RequestMapping("/Jeonju")
    public String introJeonju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/JeonBukHyunDai";
    }

    @RequestMapping("/Pohang")
    public String introPohang(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/PohangSteel";
    }

    @RequestMapping("/Ulsan")
    public String introUlSan(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/UlsanHD";
    }

    @RequestMapping("/Jeju")
    public String introJeju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/JejuSK";
    }

    @RequestMapping("/Gwangju")
    public String introGwangju(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();

        model.addAttribute("javascript_key", javascript_key);

        return "intro/GwangjuFC";
    }
}
