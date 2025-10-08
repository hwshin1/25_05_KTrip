package org.myproject.demo.repository;

import org.myproject.demo.vo.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;

public interface MemberRepository extends JpaRepository<Member, Integer> {

    int doJoin(String loginId, String loginPw, String name, String nickName, String email);

    Member getUserByLoginId(String loginId);

    Member getUserByNameAndEmail(String name, String email);

    int getLastInsertId();

    void modifyWithoutPw(int loginedUserId, String nickName, String email);

    void modify(int loginedUserId, String loginPw, String nickName, String email);

    Member getUserById(int loginedUserId);

    Member getUserTeamById(int loginedUserId);

    void getupdateTeamId(int loginedUserId, int teamId);

    int getTeamIdByName(String teamName);

    int kakaoJoin(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token);

    Member getUserByEmailAndLoginType(String kakao_email, String login_type);

    int doJoinKakao(String loginId, String loginPw, String name, String nickName, String email, String login_type);
}
