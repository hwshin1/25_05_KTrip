package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.User;

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
}
