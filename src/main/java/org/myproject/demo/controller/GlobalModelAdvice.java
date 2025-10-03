package org.myproject.demo.controller;

import org.myproject.demo.service.MemberService;
import org.myproject.demo.vo.Member;
import org.myproject.demo.vo.Rq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

// 별도로 region이 다 통용 되도록
@ControllerAdvice
public class GlobalModelAdvice {

    @Autowired
    private Rq rq;

    @Autowired
    private MemberService memberService;

    @ModelAttribute("region")
    public String showRegion() {
        if (!rq.isLogined()) {
            return null;
        }

        Member member = memberService.getUserTeamById(rq.getLoginedUserId());

        if (member == null) {
            return null;
        }

        String team_name = member.getExtra_teamName();
        if (team_name == null || team_name.isBlank()) {
            return "";
        }

        return switch (team_name.toLowerCase()) {
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
}
