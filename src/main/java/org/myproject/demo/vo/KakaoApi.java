package org.myproject.demo.vo;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@Getter
public class KakaoApi {
    @Value("${kakao.restapi_key}")
    private String restapi_key;

    @Value("${kakao.javascript_key}")
    private String javascript_key;

    @Value("${kakao.redirect_url}")
    private String redirect_url;
}
