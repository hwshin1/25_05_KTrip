package org.myproject.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.myproject.demo.service.UserService;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.KakaoApi;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Rq;
import org.myproject.demo.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    private Rq rq;

    @Autowired
    private KakaoApi kakaoApi;

    @Autowired
    private UserService userService;

    @GetMapping("/user/join")
    public String Join(Model model) {
        String sendURL = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="
                + kakaoApi.getClient_id() + "&redirect_uri="+ kakaoApi.getRedirect_url();

        model.addAttribute("sendURL", sendURL);

        return "user/join";
    }

    @RequestMapping("/user/doJoin")
    @ResponseBody
    public String doJoin(String loginId, String loginPw, String name, String nickName, String email) {
        if (Ut.isEmptyOrNull(loginId)) {
            return Ut.jsHistoryBack("F-1", Ut.f("아이디 입력"));
        }

        if (Ut.isEmptyOrNull(loginPw)) {
            return Ut.jsHistoryBack("F-2", Ut.f("비밀번호 입력"));
        }

        if (Ut.isEmptyOrNull(name)) {
            return Ut.jsHistoryBack("F-3", Ut.f("이름 입력"));
        }

        if  (Ut.isEmptyOrNull(nickName)) {
            return Ut.jsHistoryBack("F-4", Ut.f("닉네임 입력"));
        }

        if (Ut.isEmptyOrNull(email)) {
            return Ut.jsHistoryBack("F-5", Ut.f("이메일 입력"));
        }

        ResultData joinRd = userService.doJoin(loginId, loginPw, name, nickName, email);

        if (joinRd.isFail()) {
            return Ut.jsHistoryBack(joinRd.getResultCode(), joinRd.getMsg());
        }

        return Ut.jsReplace(joinRd.getResultCode(), joinRd.getMsg(), "/user/login");
    }

    @RequestMapping("/user/login")
    public String login() {
        return "user/login";
    }

    @RequestMapping("/user/doLogin")
    @ResponseBody
    public String doLogin(HttpServletRequest req, String loginId, String loginPw) {

        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(loginId)) {
            return Ut.jsHistoryBack("F-1", Ut.f("아이디 입력"));
        }

        if (Ut.isEmptyOrNull(loginPw)) {
            return Ut.jsHistoryBack("F-2", Ut.f("비밀번호 입력"));
        }

        User user = userService.getUserByLoginId(loginId);

        if (user == null) {
            return Ut.jsHistoryBack("F-3", Ut.f("%s는 없는 아이디 입니다.", loginId));
        }

        if (!user.getLoginPw().equals(loginPw)) {
            return Ut.jsHistoryBack("F-4", Ut.f("비밀번호가 일치하지 않습니다."));
        }

        rq.login(user);

        return Ut.jsReplace("S-1", Ut.f("%s님 환영합니다!", user.getNickName()), "/");
    }

    @RequestMapping("/user/doLogout")
    @ResponseBody
    public String doLogout(HttpServletRequest req) {

        rq = (Rq) req.getAttribute("rq");

        rq.logout();

        return Ut.jsReplace("S-1", "로그아웃 성공", "/");
    }
}
