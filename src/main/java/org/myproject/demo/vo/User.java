package org.myproject.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private LocalDateTime regDate;
    private LocalDateTime updateDate;
    private String loginId;
    private String loginPw;
    private int authLevel;
    private String name;
    private String nickName;
    private String email;
    private String login_type;
    private int teamId;

    private String extra_writer;
    private String extra_teamName;
    private String extra_teamLogo;

    // 권한 레벨 상수
    public static final int AUTH_LEVEL_USER = 3;
    public static final int AUTH_LEVEL_ADMIN = 7;

    // 편의 메서드
    public boolean isAdmin() {
        return this.authLevel == AUTH_LEVEL_ADMIN;
    }

    public boolean isUser() {
        return this.authLevel == AUTH_LEVEL_USER;
    }
}
