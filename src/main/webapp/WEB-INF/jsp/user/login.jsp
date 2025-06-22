<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>
<h1 class="text-center">The Login Page</h1>
<section>
    <div style="margin-left: auto; margin-right: auto;">
        <form action="../user/doLogin" method="POST">
            <div style="width: 100%; display: flex; justify-content: center; align-items: center; background: #fff;">
                <div style="width: 360px; padding: 40px; border-radius: 16px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); background: #fdfdfd;">
                    <h2 style="text-align: center; margin-bottom: 24px; color: #333;">로그인</h2>

                    <!-- 아이디 -->
                    <input name="loginId" type="text" placeholder="아이디를 입력하세요"
                           style="width: 100%; height: 40px; margin-bottom: 12px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 비밀번호 -->
                    <input name="loginPw" type="text" placeholder="비밀번호를 입력하세요"
                           style="width: 100%; height: 40px; margin-bottom: 12px; padding: 10px; border: 1px solid #ccc; border-radius: 8px; font-size: 14px;">

                    <!-- 로그인 버튼 -->
                    <button style="width: 100%; height: 40px; border: none; border-radius: 20px; background-color: #333; color: white; font-size: 14px; cursor: pointer;">
                        로그인
                    </button>

                    <!-- 회원가입 하러가기 버튼 -->
                    <button style="border: none; color: white; font-size: 14px; cursor: pointer; width: 100%; height: 40px; margin-top: 1rem; border-radius: 20px; background-color: #333;">
                        <a style="display: block; width: 100%;" href="../user/join">회원가입
                            하러가기</a>
                    </button>

                    <!-- 구분선 및 SNS 문구 -->
                    <div style="margin: 24px 0; display: flex; align-items: center;">
                        <hr style="flex: 1; border: none; height: 1px; background-color: #ccc;">
                        <span style="padding: 0 10px; color: #888; font-size: 12px;">SNS로 로그인</span>
                        <hr style="flex: 1; border: none; height: 1px; background-color: #ccc;">
                    </div>

                    <!-- 카카오 로그인 -->
                    <img src="/kakao_login_medium_narrow.png" alt="카카오 로그인"
                         style="margin-left: auto; margin-right: auto; object-fit: cover; cursor: pointer;">
                </div>
            </div>
        </form>
        <!-- 뒤로가기 버튼 -->
        <div class="text-center mt-8">
            <button onclick="history.back();"
                    class="px-5 py-2.5 border border-gray-400 text-gray-700 text-base bg-white hover:bg-gray-100 rounded-md transition duration-200">
                뒤로가기
            </button>
        </div>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>