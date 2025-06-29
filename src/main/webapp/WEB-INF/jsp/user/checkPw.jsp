<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="h-screen flex justify-center items-start mt-24 px-4">
    <div class="w-full max-w-lg bg-white shadow-xl rounded-2xl p-8">
        <h2 class="text-2xl font-semibold text-center mb-6">비밀번호 확인</h2>

        <form action="../user/doCheckPw" method="POST" class="space-y-6">
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">아이디</label>
                <div class="w-full p-2 bg-gray-100 rounded-md text-gray-800">
                    ${rq.loginedUser.loginId}
                </div>
            </div>

            <div>
                <label for="loginPw" class="block text-sm font-medium text-gray-700 mb-1">비밀번호</label>
                <input id="loginPw" name="loginPw" type="text" autocomplete="off" placeholder="비밀번호를 입력하세요"
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <div class="flex justify-between items-center mt-6">
                <button type="submit"
                        class="px-5 py-2.5 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition">
                    확인
                </button>
                <button type="button" onclick="history.back();"
                        class="px-5 py-2.5 border border-gray-300 text-gray-700 bg-white rounded-md hover:bg-gray-100 transition">
                    뒤로가기
                </button>
            </div>
        </form>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>