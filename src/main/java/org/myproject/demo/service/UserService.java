package org.myproject.demo.service;

import org.myproject.demo.repository.UserRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public String doJoin(String loginId, String loginPw, String name, String nickName, String email) {
        User user = getUserByLoginId(loginId);

        if (user != null) {
            return Ut.jsHistoryBack("F-A", Ut.f("이미 가입된 아이디", loginId));
        }

        user = getUserByNameAndEmail(name, email);

        if (user != null) {
           return Ut.jsHistoryBack("F-B", Ut.f("이미 사용중인 이름과 이메일", name, email));
        }

        userRepository.doJoin(loginId, loginPw, name, nickName, email);

        return Ut.jsReplace("S-1", Ut.f("회원가입 성공"), "/");
    }

    private User getUserByNameAndEmail(String name, String email) {
        return userRepository.getUserByNameAndEmail(name, email);
    }

    public User getUserByLoginId(String loginId) {
        return userRepository.getUserByLoginId(loginId);
    }
}
