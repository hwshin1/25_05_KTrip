package org.myproject.demo.service;

import org.myproject.demo.repository.UserRepository;
import org.myproject.demo.util.Ut;
import org.myproject.demo.vo.ResultData;
import org.myproject.demo.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public ResultData modifyWithoutPw(int loginedUserId, String name, String nickName, String email) {
        userRepository.modifyWithoutPw(loginedUserId, name, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public ResultData modifyRd(int loginedUserId, String loginPw, String name, String nickName, String email) {
        loginPw = Ut.sha256(loginPw);

        userRepository.modify(loginedUserId, loginPw, name, nickName, email);

        return ResultData.from("S-1", "회원정보 수정 완료");
    }

    public User getUserById(int loginedUserId) {
        return userRepository.getUserById(loginedUserId);
    }
}
