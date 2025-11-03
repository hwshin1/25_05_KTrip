package org.myproject.demo.service;

import lombok.RequiredArgsConstructor;
import org.myproject.demo.repository.KakaoRepository;
import org.myproject.demo.repository.MemberRepository;
import org.myproject.demo.repository.TeamRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.Kakao;
import org.myproject.demo.vo.Member;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.Team;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    private final KakaoRepository kakaoRepository;

    private final TeamRepository teamRepository;

    @Transactional
    public ResultData<Long> doJoin(String loginId, String loginPw, String name, String nickName, String email) {
        Member memberId = getUserByLoginId(loginId);

        if (memberId != null) {
            return ResultData.from("F-A", Ut.f("이미 가입된 아이디", loginId));
        }

        memberId = getUserByNameAndEmail(name, email);

        if (memberId != null) {
           return ResultData.from("F-B", Ut.f("이미 사용중인 이름과 이메일", name, email));
        }

        /* Mybatis 방식
        memberRepository.doJoin(loginId, loginPw, name, nickName, email);

        int id = memberRepository.getLastInsertId();
         */

        // 현재 방식
        Member member = Member.builder()
                .loginId(loginId)
                .loginPw(loginPw)
                .authLevel(3)
                .name(name)
                .nickName(nickName)
                .email(email)
                .loginType("local")
                .build();

        memberRepository.save(member);

        long id = member.getId();

        return ResultData.from("S-1", Ut.f("회원가입 성공!"), "가입 성공 id", id);
    }

    private Member getUserByNameAndEmail(String name, String email) {
        return memberRepository.findByNameAndEmail(name, email);
    }

    public Member getUserByLoginId(String loginId) {
        return memberRepository.findByLoginId(loginId);
    }

    @Transactional
    public ResultData modifyWithoutPw(Long loginedMemberId, String nickName, String email) {
        Member member = getLoginMemberById(loginedMemberId);

        if (nickName != null) {
            member.setNickName(nickName);
        }

        if (email != null) {
            member.setEmail(email);
        }

        memberRepository.save(member);

        /* Mybatis 방식
        memberRepository.modifyWithoutPw(loginedUserId, nickName, email);
         */

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    @Transactional
    public ResultData modify(Long loginedMemberId, String loginPw, String nickName, String email) {
        Member member = getLoginMemberById(loginedMemberId);

        if (loginPw != null) {
            member.setLoginPw(loginPw);
        }

        if (nickName != null) {
            member.setNickName(nickName);
        }

        if (email != null) {
            member.setEmail(email);
        }

        memberRepository.save(member);

        /* Mybatis 방식
        memberRepository.modify(loginedUserId, loginPw, nickName, email);
         */

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public Member getLoginMemberById(Long loginedMemberId) {
        return memberRepository.findById(loginedMemberId)
                .orElseThrow(() -> new RuntimeException("로그인 된 아이디를 불러오지 못했습니다."));
    }

    public Team getTeamById(Long teamId) {
        if (teamId == null) return null;
        return teamRepository.findById(teamId).orElseThrow(() -> new RuntimeException("해당 팀이 존재하지 않습니다."));
    }

    /* Mybatis 방식
    public ResultData getUpdateTeamId(Long loginedUserId, Long teamId) {
        memberRepository.getupdateTeamId(loginedUserId, teamId);

        Member member = memberRepository.getUserTeamById(loginedUserId);


        return ResultData.from("S-1", Ut.f("%s팀 선택 완료!", team.getTeamName()));
    }
    */

    @Transactional
    public ResultData<Kakao> kakaoJoin(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token) {

        Kakao kakao = Kakao.builder()
                .kakao_id(kakao_id)
                .kakao_createAt(kakao_createAt)
                .kakao_nickName(kakao_nickName)
                .kakao_email(kakao_email)
                .access_token(access_token)
                .refresh_token(refresh_token)
                .build();

        kakaoRepository.save(kakao);

        Member isMember = getMemberByEmailAndLoginType(kakao_email, "kakao");

        if (isMember == null) {
            Member member = Member.builder()
                    .loginId("kakao_" + kakao_id)
                    .loginPw("N/A")
                    .authLevel(3)
                    .name("")
                    .nickName(kakao_nickName)
                    .email(kakao_email)
                    .loginType("kakao")
                    .build();

            memberRepository.save(member);
        }

        return ResultData.from("S-1", Ut.f("%s님 카카오 로그인 성공", kakao.getKakao_nickName()));

        /* Mybatis 방식
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
         */
    }

    public Member getMemberByEmailAndLoginType(String kakao_email, String login_type) {
        return memberRepository.findByEmailAndLoginType(kakao_email, login_type);
    }

    public ResultData updateTeamByName(Long loginedMemberId, String teamName) {
        Team team = teamRepository.findByTeamName(teamName).orElse(null);

        if (team == null) {
            return ResultData.from("F-1", "해당 팀을 찾을 수 없습니다.");
        }

        Member member = getLoginMemberById(loginedMemberId);

        // 팀 설정 후 수정(저장)
        member.setTeam(team);
        memberRepository.save(member);

        return ResultData.from("S-1", Ut.f("%s팀 선택 완료", teamName));
    }
}
