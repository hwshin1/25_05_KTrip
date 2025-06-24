package org.myproject.demo.controller;

import org.myproject.demo.vo.KakaoApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapTest {

    @Autowired
    private KakaoApi kakaoApi;

    @RequestMapping("home/map")
    public String showMap(Model model) {

        String javascript_key = kakaoApi.getJavascript_key();
        String text = "대전월드컵경기장";

        model.addAttribute("javascript_key", javascript_key);
        model.addAttribute("text", text);

        return "home/map";
    }
}
