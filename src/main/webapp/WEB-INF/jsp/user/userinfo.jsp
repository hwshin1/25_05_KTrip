<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="h-screen max-w-3xl mx-auto mt-24 px-6">
    <div class="bg-white rounded-2xl shadow-lg p-8">
        <h2 class="text-2xl font-semibold text-center mb-6">회원 정보</h2>

        <table class="w-full text-sm text-left text-gray-600">
            <tbody class="divide-y divide-gray-200">
            <tr>
                <th class="py-3 font-medium text-gray-700 w-1/3">가입일</th>
                <td class="py-3 text-right">${rq.loginedUser.regDate}</td>
            </tr>
            <tr>
                <th class="py-3 font-medium text-gray-700">아이디</th>
                <td class="py-3 text-right">${rq.loginedUser.loginId}</td>
            </tr>
            <tr>
                <th class="py-3 font-medium text-gray-700">이름</th>
                <td class="py-3 text-right">${rq.loginedUser.name}</td>
            </tr>
            <tr>
                <th class="py-3 font-medium text-gray-700">닉네임</th>
                <td class="py-3 text-right">${rq.loginedUser.nickName}</td>
            </tr>
            <tr>
                <th class="py-3 font-medium text-gray-700">이메일</th>
                <td class="py-3 text-right">${rq.loginedUser.email}</td>
            </tr>
            <tr>
                <th class="py-3 font-medium text-gray-700">회원정보 수정</th>
                <td class="py-3 text-right">
                    <a href="../user/checkPw" class="text-blue-600 hover:underline">수정하기</a>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="mt-8 text-center">
            <button onclick="history.back();" class="px-5 py-2 border border-gray-300 rounded-lg bg-white text-gray-700 hover:bg-gray-100 transition">
                뒤로가기
            </button>
        </div>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>