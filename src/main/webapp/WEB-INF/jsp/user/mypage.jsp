<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>
<h1 class="text-center">My Page</h1>
<section class="mt-24 text-xl px-4">
    <div class="mx-auto">
        <table class="w-full border-collapse">
            <tbody>
            <tr>
                <th>가입일</th>
                <td style="text-align: center;">${rq.loginedMember.regDate }</td>

            </tr>
            <tr>
                <th>아이디</th>
                <td style="text-align: center;">${rq.loginedMember.loginId }</td>

            </tr>
            <tr>
                <th>이름</th>
                <td style="text-align: center;">${rq.loginedMember.name }</td>
            </tr>
            <tr>
                <th>닉네임</th>
                <td style="text-align: center;">${rq.loginedMember.nickname }</td>

            </tr>
            <tr>
                <th>이메일</th>
                <td style="text-align: center;">${rq.loginedMember.email }</td>

            </tr>
            <tr>
                <th>회원정보 수정</th>
                <td style="text-align: center;">
                    <a href="../member/checkPw" class="btn btn-primary">수정 </a>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- 뒤로가기 버튼 -->
        <div class="text-center mt-5">
            <button class="max-w-xs my-0 mx-auto text-black bg-[#eeeeee] font-semibold text-base rounded-lg"
                    onclick="history.back();">
                ← 뒤로 가기
            </button>
        </div>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>