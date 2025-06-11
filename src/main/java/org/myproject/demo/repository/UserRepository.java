package org.myproject.demo.repository;

import org.apache.ibatis.annotations.Mapper;
import org.myproject.demo.vo.User;

@Mapper
public interface UserRepository {

    int doJoin(String loginId, String loginPw, String name, String nickName, String email);

    User getUserByLoginId(String loginId);

    User getUserByNameAndEmail(String name, String email);
}
