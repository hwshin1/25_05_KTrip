package org.myproject.demo.vo;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@Getter
public class KakaoApi {
    @Value("${kakao.client_id}")
    private String client_id;

    @Value("${kakao.redirect_url}")
    private String redirect_url;
}
