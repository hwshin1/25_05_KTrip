package org.myproject.demo.vo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDateTime;

import static jakarta.persistence.GenerationType.IDENTITY;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@SuperBuilder
@ToString(callSuper = true)
public class Kakao {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private int id;
    private long kakao_id;
    private LocalDateTime kakao_createAt;
    private String kakao_nickName;
    private String kakao_email;
    private String access_token;
    private String refresh_token;

    public Kakao(long kakao_id, LocalDateTime kakao_createAt, String kakao_nickName, String kakao_email, String access_token, String refresh_token) {
        this.kakao_id = kakao_id;
        this.kakao_createAt = kakao_createAt;
        this.kakao_nickName = kakao_nickName;
        this.kakao_email = kakao_email;
        this.access_token = access_token;
        this.refresh_token = refresh_token;
    }
}
