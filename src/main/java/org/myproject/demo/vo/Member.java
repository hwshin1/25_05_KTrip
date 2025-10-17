package org.myproject.demo.vo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Transient;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@Getter
@Setter
@ToString(callSuper = true)
public class Member extends BaseEntity {

    @Column(name = "loginId")
    private String loginId;

    @Column(name = "loginPw")
    private String loginPw;

    @Column(name = "authLevel")
    private int authLevel;

    @Column(name = "name")
    private String name;

    @Column(name = "nickName")
    private String nickName;

    @Column(name = "email")
    private String email;

    @Column(name = "login_type")
    private String loginType;

    @Column(name = "teamId", nullable = true)
    private Long teamId;

    @Transient
    private String extra_writer;
    @Transient
    private String extra_teamName;
    @Transient
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
