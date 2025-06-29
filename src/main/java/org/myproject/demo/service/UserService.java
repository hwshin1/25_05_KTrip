package org.myproject.demo.service;

import org.myproject.demo.repository.UserRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.Kakao;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public ResultData<Integer> doJoin(String loginId, String loginPw,
                                      String name, String nickName, String email) {
        User user = getUserByLoginId(loginId);

        if (user != null) {
            return ResultData.from("F-A", Ut.f("이미 가입된 아이디", loginId));
        }

        user = getUserByNameAndEmail(name, email);

        if (user != null) {
           return ResultData.from("F-B", Ut.f("이미 사용중인 이름과 이메일", name, email));
        }

        userRepository.doJoin(loginId, loginPw, name, nickName, email);

        int id = userRepository.getLastInsertId();

        return ResultData.from("S-1", Ut.f("회원가입 성공!"), "가입 성공 id", id);
    }

    private User getUserByNameAndEmail(String name, String email) {
        return userRepository.getUserByNameAndEmail(name, email);
    }

    public User getUserByLoginId(String loginId) {
        return userRepository.getUserByLoginId(loginId);
    }

    public ResultData modifyWithoutPw(int loginedUserId, String nickName, String email) {
        userRepository.modifyWithoutPw(loginedUserId, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public ResultData modify(int loginedUserId, String loginPw, String nickName, String email) {
        userRepository.modify(loginedUserId, loginPw, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public User getUserById(int loginedUserId) {
        return userRepository.getUserById(loginedUserId);
    }

    public User getUserTeamById(int loginedUserId) {
        return userRepository.getUserTeamById(loginedUserId);
    }

    public ResultData getupdateTeamId(int loginedUserId, int teamId) {
        userRepository.getupdateTeamId(loginedUserId, teamId);

        User user = userRepository.getUserTeamById(loginedUserId);

        return ResultData.from("S-1", Ut.f("%s팀 선택 완료!", user.getExtra_teamName()));
    }

    public int getTeamIdByName(String teamName) {
        return userRepository.getTeamIdByName(teamName);
    }

    public ResultData<Kakao> kakaoJoin(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token) {
        userRepository.kakaoJoin(kakao_id, kakao_createAt, kakao_nickName, kakao_email, access_token, refresh_token);

        User user = userRepository.getUserByEmailAndLoginType(kakao_email, "kakao");

        if (user == null) {
            String loginId = "kakao_" + kakao_id;
            String loginPw = "";
            String name = "";
            String nickName = kakao_nickName;
            String email = kakao_email;
            String login_type = "kakao";

            userRepository.doJoinKakao(loginId, loginPw, name, nickName, email, login_type);
        }

        Kakao kakao = new Kakao(kakao_id, kakao_createAt, kakao_nickName, kakao_email, access_token, refresh_token);

        return ResultData.from("S-1", Ut.f("%s님 카카오 로그인 성공", kakao.getKakao_nickName()));
    }

    public User getUserByEmailAndLoginType(String kakao_email, String login_type) {
        return userRepository.getUserByEmailAndLoginType(kakao_email, login_type);
    }
}
