package org.myproject.demo.service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.myproject.demo.vo.Kakao;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;

@Service
@Slf4j
@RequiredArgsConstructor
public class KakaoService {

    @Value("${kakao.restapi_key}")
    private String kakaoRestApiKey;

    @Value("${kakao.redirect_url}")
    private String kakaoRedirectUrl;

    private Kakao kakao;

    public Kakao getAccessToken(String code) {
        String reqUrl = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
            conn.setDoOutput(true);

            // 파라미터 설정
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();

            sb.append("grant_type=authorization_code");
            sb.append("&client_id=").append(kakaoRestApiKey);
            sb.append("&redirect_uri=").append(kakaoRedirectUrl);
            sb.append("&code=").append(code);

            bw.write(sb.toString());
            bw.flush();

            int responseCode = conn.getResponseCode();
            log.info("[KakaoService.getAccessToken] responseCode = {}", responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(
                    responseCode >= 200 && responseCode < 300 ? conn.getInputStream() : conn.getErrorStream()
            ));

            StringBuilder responseSb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                responseSb.append(line);
            }

            String result = responseSb.toString();
            log.info("responseBody = {}", result);

            // json으로 변환
            JsonElement element = JsonParser.parseString(result);
            JsonObject json = element.getAsJsonObject();

            String access_token = json.get("access_token").getAsString();
            String refresh_token = json.get("refresh_token").getAsString();

            kakao.setAccess_token(access_token);
            kakao.setRefresh_token(refresh_token);

            getUserInfo(access_token);

            br.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return kakao;
    }

    public void getUserInfo(String access_token) {
        String reqUrl = "https://kapi.kakao.com/v2/user/me";

        try {
            URL url = new URL(reqUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
            conn.setRequestProperty("Authorization", "Bearer " + access_token);

            int responseCode = conn.getResponseCode();
            log.info("[KakaoService.getUserInfo] responseCode : {}",  responseCode);

            BufferedReader br;
            if (responseCode >= 200 && responseCode <= 300) {
                br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {
                br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }

            String line = "";
            StringBuilder responseSb = new StringBuilder();

            while((line = br.readLine()) != null){
                responseSb.append(line);
            }

            String resultData = responseSb.toString();
            log.info("responseBody = {}", resultData);

            // json으로 변환
            JsonElement element = JsonParser.parseString(resultData);
            JsonObject json = element.getAsJsonObject();

            System.out.println(json);

            // properties / kakao_account는 객체(json)으로 받아와짐
            JsonObject properties = json.get("properties").getAsJsonObject();
            JsonObject kakaoAccount = json.get("kakao_account").getAsJsonObject();

            // properties / kakao_account 안에서 각각 id, 연결날짜, 닉네임, 이메일 가져오기
            long id = json.get("id").getAsLong();
            String connected_at = json.get("connected_at").getAsString();

            OffsetDateTime connectedAt = OffsetDateTime.parse(connected_at);
            LocalDateTime createdAt = connectedAt.toLocalDateTime();

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String created_At = formatter.format(connectedAt);

            System.out.println(created_At);

            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
            String email = kakaoAccount.getAsJsonObject().get("email").getAsString();

            kakao.setKakao_id(id);
            kakao.setKakao_createAt(createdAt);
            kakao.setKakao_nickName(nickname);
            kakao.setKakao_email(email);

            br.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
