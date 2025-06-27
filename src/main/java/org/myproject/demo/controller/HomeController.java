package org.myproject.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.myproject.demo.service.UserService;
import org.myproject.demo.vo.Rq;
import org.myproject.demo.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    private Rq rq;

    @Autowired
    private CrawlingController crawlingController;

    @Autowired
    private UserService userService;

    @RequestMapping("/home/main")
    public String showLogo(HttpServletRequest req, Model model) {

        crawlingController.team();

        rq = (Rq) req.getAttribute("rq");

        User user = userService.getUserTeamById(rq.getLoginedUserId());

        if (user != null) {
            String team_name = user.getExtra_teamName();
            String region = getRegion(team_name);

            model.addAttribute("region", region);
        }

        return "home/main";
    }

    private String getRegion(String teamName) {
        return switch (teamName.toLowerCase()) {
            case "전북" -> "Jeonju";
            case "대전" -> "Daejeon";
            case "김천" -> "Kimcheon";
            case "포항" -> "Pohang";
            case "울산" -> "Ulsan";
            case "광주" -> "Gwangju";
            case "서울" -> "Seoul";
            case "강원" -> "Gangwon";
            case "안양" -> "Anyang";
            case "제주" -> "Jeju";
            case "수원FC" -> "SuwonFC";
            case "대구" -> "Daegu";
            default -> "";
        };
    }

    @RequestMapping("/")
    public String showMain(){
        return "redirect:/home/main";
    }
}
