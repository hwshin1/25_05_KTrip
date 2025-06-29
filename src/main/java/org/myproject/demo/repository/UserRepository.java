package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.User;

import java.time.LocalDateTime;

@Mapper
public interface UserRepository {

    int doJoin(String loginId, String loginPw, String name, String nickName, String email);

    User getUserByLoginId(String loginId);

    User getUserByNameAndEmail(String name, String email);

    int getLastInsertId();

    void modifyWithoutPw(int loginedUserId, String nickName, String email);

    void modify(int loginedUserId, String loginPw, String nickName, String email);

    User getUserById(int loginedUserId);

    User getUserTeamById(int loginedUserId);

    void getupdateTeamId(int loginedUserId, int teamId);

    int getTeamIdByName(String teamName);

    int kakaoJoin(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token);

    User getUserByEmailAndLoginType(String kakao_email, String login_type);

    int doJoinKakao(String loginId, String loginPw, String name, String nickName, String email, String login_type);
}
