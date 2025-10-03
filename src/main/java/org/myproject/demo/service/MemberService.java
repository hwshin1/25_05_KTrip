package org.myproject.demo.service;

import org.myproject.demo.repository.MemberRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.Kakao;
import org.myproject.demo.vo.Member;
import org.myproject.demo.vo.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    public ResultData<Integer> doJoin(String loginId, String loginPw,
                                      String name, String nickName, String email) {
        Member member = getUserByLoginId(loginId);

        if (member != null) {
            return ResultData.from("F-A", Ut.f("이미 가입된 아이디", loginId));
        }

        member = getUserByNameAndEmail(name, email);

        if (member != null) {
           return ResultData.from("F-B", Ut.f("이미 사용중인 이름과 이메일", name, email));
        }

        memberRepository.doJoin(loginId, loginPw, name, nickName, email);

        int id = memberRepository.getLastInsertId();

        return ResultData.from("S-1", Ut.f("회원가입 성공!"), "가입 성공 id", id);
    }

    private Member getUserByNameAndEmail(String name, String email) {
        return memberRepository.getUserByNameAndEmail(name, email);
    }

    public Member getUserByLoginId(String loginId) {
        return memberRepository.getUserByLoginId(loginId);
    }

    public ResultData modifyWithoutPw(int loginedUserId, String nickName, String email) {
        memberRepository.modifyWithoutPw(loginedUserId, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public ResultData modify(int loginedUserId, String loginPw, String nickName, String email) {
        memberRepository.modify(loginedUserId, loginPw, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public Member getUserById(int loginedUserId) {
        return memberRepository.getUserById(loginedUserId);
    }

    public Member getUserTeamById(int loginedUserId) {
        return memberRepository.getUserTeamById(loginedUserId);
    }

    public ResultData getupdateTeamId(int loginedUserId, int teamId) {
        memberRepository.getupdateTeamId(loginedUserId, teamId);

        Member member = memberRepository.getUserTeamById(loginedUserId);

        return ResultData.from("S-1", Ut.f("%s팀 선택 완료!", member.getExtra_teamName()));
    }

    public int getTeamIdByName(String teamName) {
        return memberRepository.getTeamIdByName(teamName);
    }

    public ResultData<Kakao> kakaoJoin(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token) {
        memberRepository.kakaoJoin(kakao_id, kakao_createAt, kakao_nickName, kakao_email, access_token, refresh_token);

        Member member = memberRepository.getUserByEmailAndLoginType(kakao_email, "kakao");

        if (member == null) {
            String loginId = "kakao_" + kakao_id;
            String loginPw = "";
            String name = "";
            String nickName = kakao_nickName;
            String email = kakao_email;
            String login_type = "kakao";

            memberRepository.doJoinKakao(loginId, loginPw, name, nickName, email, login_type);
        }

        Kakao kakao = new Kakao(kakao_id, kakao_createAt, kakao_nickName, kakao_email, access_token, refresh_token);

        return ResultData.from("S-1", Ut.f("%s님 카카오 로그인 성공", kakao.getKakao_nickName()));
    }

    public Member getUserByEmailAndLoginType(String kakao_email, String login_type) {
        return memberRepository.getUserByEmailAndLoginType(kakao_email, login_type);
    }
}
