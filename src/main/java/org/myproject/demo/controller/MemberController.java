package org.myproject.demo.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.myproject.demo.service.KakaoService;
import org.myproject.demo.service.MemberService;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;

@Controller
public class MemberController {

    @Autowired
    private Rq rq;

    @Value("${kakao.restapi_key}")
    private String kakaoRestApiKey;

    @Value("${kakao.redirect_url}")
    private String kakaoRedirectUri;

    @Autowired
    private KakaoService kakaoService;

    @Autowired
    private MemberService memberService;

    @GetMapping("/member/join")
    public String Join(Model model) {
        String sendURL = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="
                + kakaoRestApiKey + "&redirect_uri="+ kakaoRedirectUri;

        model.addAttribute("sendURL", sendURL);

        // Mybatis 방식
        // return "user/join";
        return "member/join";
    }

    @GetMapping("/login/demoshw/oauth")
    @ResponseBody
    public String callBack(HttpServletRequest req, String code) {
        rq = (Rq) req.getAttribute("rq");

        Kakao kakao = kakaoService.getAccessToken(code);

        long kakao_id = kakao.getKakao_id();
        LocalDateTime kakao_createAt = kakao.getKakao_createAt();
        String kakao_nickName = kakao.getKakao_nickName();
        String kakao_email = kakao.getKakao_email();
        String access_token = kakao.getAccess_token();
        String refresh_token = kakao.getRefresh_token();

        ResultData kakaoJoinRd = memberService.kakaoJoin(kakao_id, kakao_createAt, kakao_nickName, kakao_email, access_token, refresh_token);

        if (kakaoJoinRd.isFail()) {
            return Ut.jsHistoryBack(kakaoJoinRd.getResultCode(), kakaoJoinRd.getMsg());
        }

        Member member = memberService.getMemberByEmailAndLoginType(kakao_email, "kakao");

        if (member == null) {
            return Ut.jsHistoryBack("F-2", "카카오 회원 정보를 찾을 수 없습니다.");
        }

        return Ut.jsReplace(kakaoJoinRd.getResultCode(), kakaoJoinRd.getMsg(), "/");
    }

    @RequestMapping("/member/doJoin")
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

        ResultData joinRd = memberService.doJoin(loginId, loginPw, name, nickName, email);

        if (joinRd.isFail()) {
            return Ut.jsHistoryBack(joinRd.getResultCode(), joinRd.getMsg());
        }

        return Ut.jsReplace(joinRd.getResultCode(), joinRd.getMsg(), "/member/login");
    }

    @RequestMapping("/member/login")
    public String login(Model model) {
        String sendURL = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="
                + kakaoRestApiKey + "&redirect_uri="+ kakaoRedirectUri;

        System.out.println(sendURL);

        model.addAttribute("sendURL", sendURL);

        // Mybatis 방식
        // return "user/login";
        return "member/login";
    }

    @RequestMapping("/member/doLogin")
    @ResponseBody
    public String doLogin(HttpServletRequest req, String loginId, String loginPw) {

        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(loginId)) {
            return Ut.jsHistoryBack("F-1", Ut.f("아이디 입력"));
        }

        if (Ut.isEmptyOrNull(loginPw)) {
            return Ut.jsHistoryBack("F-2", Ut.f("비밀번호 입력"));
        }

        Member member = memberService.getUserByLoginId(loginId);

        if (member == null) {
            return Ut.jsHistoryBack("F-3", Ut.f("%s는 없는 아이디 입니다.", loginId));
        }

        if (!member.getLoginPw().equals(loginPw)) {
            return Ut.jsHistoryBack("F-4", Ut.f("비밀번호가 일치하지 않습니다."));
        }

        rq.login(member);

        return Ut.jsReplace("S-1", Ut.f("%s님 환영합니다!", member.getNickName()), "/");
    }

    @RequestMapping("/member/doLogout")
    @ResponseBody
    public String doLogout(HttpServletRequest req) {

        rq = (Rq) req.getAttribute("rq");

        rq.logout();

        return Ut.jsReplace("S-1", "로그아웃 성공", "/");
    }

    @RequestMapping("/member/mypage")
    public String mypage(HttpServletRequest req, Model model) {
        rq = (Rq) req.getAttribute("rq");

        Member member = memberService.getLoginMemberById(rq.getLoginedMemberId());

        Team team = null;

        if (member.getTeamId() != null) {
            team = memberService.getTeamById(member.getTeamId());
        }

        model.addAttribute("member", member);
        model.addAttribute("team", team);
        return "member/mypage";
    }

    @RequestMapping("/member/modifyInfo")
    public String showUserInfo() {
        return "member/modifyInfo";
    }

    @RequestMapping("/member/checkPw")
    public String showCheckPw() {
        return "member/checkPw";
    }

    @RequestMapping("/member/doCheckPw")
    @ResponseBody
    public String doCheckPw(String loginPw) {
        if (Ut.isEmptyOrNull(loginPw)) {
            return Ut.jsHistoryBack("F-1", Ut.f("비밀번호를 입력하세요."));
        }

        if (!rq.getLoginedMember().getLoginPw().equals(loginPw)) {
            return Ut.jsHistoryBack("F-2", Ut.f("비밀번호가 틀렸습니다."));
        }

        return Ut.jsReplace("S-1", Ut.f("비밀번호 확인 성공!"), "modify");
    }

    @RequestMapping("/member/modify")
    public String modify() {
        return "member/modify";
    }

    @RequestMapping("/member/doModify")
    @ResponseBody
    public String doModify(HttpServletRequest req, String loginPw, String nickName, String email) {
        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(nickName)) {
            return Ut.jsHistoryBack("F-1", Ut.f("닉네임을 입력하세요."));
        }

        if (Ut.isEmptyOrNull(email)) {
            return Ut.jsHistoryBack("F-2", Ut.f("이메일을 입력하세요."));
        }

        ResultData modifyRd;

        if (Ut.isEmptyOrNull(loginPw)) {
            modifyRd = memberService.modifyWithoutPw(rq.getLoginedMemberId(), nickName, email);
        } else {
            modifyRd = memberService.modify(rq.getLoginedMemberId(), loginPw, nickName, email);
        }

        return Ut.jsReplace(modifyRd.getResultCode(), modifyRd.getMsg(), "/member/mypage");
    }

    @RequestMapping("/member/teamCheck")
    public String teamCheck() {
        return "member/teamCheck";
    }

    @RequestMapping("/member/doTeamCheck")
    @ResponseBody
    public String doTeamCheck(HttpServletRequest req, String teamName) {
        rq = (Rq) req.getAttribute("rq");

        if (Ut.isEmptyOrNull(teamName)) {
            return Ut.jsHistoryBack("F-1", Ut.f("팀을 선택해주세요."));
        }

        ResultData rd = memberService.updateTeamByName(rq.getLoginedMemberId(), teamName);

        if (rd.isFail()) {
            return Ut.jsHistoryBack(rd.getResultCode(), rd.getMsg());
        }

        return Ut.jsReplace(rd.getResultCode(), rd.getMsg(), "/member/modify");
    }
}
