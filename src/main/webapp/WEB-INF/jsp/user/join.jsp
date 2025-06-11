<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>
<h1 style="text-align: center;">THE JOIN PAGE</h1>
<section>
    <div style="margin-left: auto; margin-right: auto;">
        <form action="../user/doJoin" method="POST">
            <div style="width: 100%; display: flex; justify-content: center; align-items: center; background: #fff;">
                <div style="width: 360px; padding: 40px; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); background: #fdfdfd;">
                    <h2 style="text-align: center; margin-bottom: 24px; color: #333;">회원가입</h2>

                    <!-- 아이디 -->
                    <input name="loginId" type="text" placeholder="아이디를 입력하세요" style="width: 100%; height: 40px; margin-bottom: 12px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 비밀번호 -->
                    <input name="loginPw" type="text" placeholder="비밀번호를 입력하세요" style="width: 100%; height: 40px; margin-bottom: 12px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 이름 -->
                    <input name="name" type="text" placeholder="이름을 입력하세요" style="width: 100%; height: 40px; margin-bottom: 12px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 닉네임 -->
                    <input name="nickName" type="text" placeholder="닉네임을 입력하세요" style="width: 100%; height: 40px; margin-bottom: 20px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 이메일 -->
                    <input name="email" type="text" placeholder="이메일을 입력하세요" style="width: 100%; height: 40px; margin-bottom: 20px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 회원가입 버튼 -->
                    <button style="width: 100%; height: 40px; border: none; border-radius: 20px; background-color: #333; color: white; font-size: 14px; cursor: pointer;">
                        회원가입
                    </button>

                    <!-- 구분선 및 SNS 문구 -->
                    <div style="margin: 24px 0; display: flex; align-items: center;">
                        <hr style="flex: 1; border: none; height: 1px; background-color: #ccc;">
                        <span style="padding: 0 10px; color: #888; font-size: 12px;">SNS로 회원가입</span>
                        <hr style="flex: 1; border: none; height: 1px; background-color: #ccc;">
                    </div>

                    <!-- 카카오 로그인 -->
                    <a href="${sendURL}">
                        <img src="/kakao_login_medium_narrow.png" alt="카카오 로그인" class="mx-auto">
                    </a>
                </div>
            </div>
        </form>
        <div>
            <button type="button" onclick="history.back();">뒤로가기</button>
        </div>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>
