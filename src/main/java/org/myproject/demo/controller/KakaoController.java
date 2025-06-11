package org.myproject.demo.controller;

import org.myproject.demo.vo.KakaoApi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KakaoController {
    @Autowired
    private KakaoApi kakaoApi;

    @GetMapping("/kakao/join")
    public String join(Model model){
        String sendURL = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="
                + kakaoApi.getClient_id() + "&redirect_uri="+ kakaoApi.getRedirect_url();
        model.addAttribute("sendURL",sendURL);
        return "user/join";
    }
}
