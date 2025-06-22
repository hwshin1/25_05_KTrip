<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-24 text-xl px-4">
    <div class="mx-auto">
        <table>
            <tbody>
            <tr>
                <th>가입일</th>
                <td class="text-center">${rq.loginedUser.regDate}</td>
            </tr>
            <tr>
                <th>아이디</th>
                <td class="text-center">${rq.loginedUser.loginId}</td>
            </tr>
            <tr>
                <th>이름</th>
                <td class="text-center">${rq.loginedUser.name}</td>
            </tr>
            <tr>
                <th>닉네임</th>
                <td class="text-center">${rq.loginedUser.nickName}</td>
            </tr>
            <tr>
                <th>이메일</th>
                <td class="text-center">${rq.loginedUser.email}</td>
            </tr>
            <tr>
                <th>회원정보 수정</th>
                <td class="text-center">
                    <a href="../user/checkPw" class="btn">수정</a>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- 뒤로가기 버튼 -->
        <div class="text-center mt-8">
            <button onclick="history.back();"
                    class="px-5 py-2.5 border border-gray-400 text-gray-700 text-base bg-white hover:bg-gray-100 rounded-md transition duration-200">
                뒤로가기
            </button>
        </div>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>