<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../common/head.jspf" %>

<script type="text/javascript">
    function MemberModify__submit(form) {
        form.loginPw.value = form.loginPw.value.trim();

        if (form.loginPw.value.length > 0) {
            form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
            if (form.loginPwConfirm.value == 0) {
                alert('비밀번호 확인이 비어있습니다.');
                return;
            }

            if (form.loginPwConfirm.value != form.loginPw.value) {
                alert('비밀번호가 일치하지 않습니다.');
                return;
            }
        }
        form.submit();
    }
</script>

<section class="h-screen flex justify-center items-start mt-24 px-4">
    <div class="w-full max-w-2xl bg-white shadow-xl rounded-2xl p-8">
        <h2 class="text-2xl font-semibold text-center mb-8">회원정보 수정</h2>

        <form onsubmit="MemberModify__submit(this); return false;" action="../user/doModify" method="POST" class="space-y-6">
            <!-- 가입일 & 아이디 -->
            <div class="grid grid-cols-2 gap-6">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">가입일</label>
                    <div class="p-2 bg-gray-100 rounded-md text-gray-800">${rq.loginedUser.regDate}</div>
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">아이디</label>
                    <div class="p-2 bg-gray-100 rounded-md text-gray-800">${rq.loginedUser.loginId}</div>
                </div>
            </div>

            <!-- 비밀번호 -->
            <div class="grid grid-cols-2 gap-6">
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">새 비밀번호</label>
                    <input name="loginPw" type="text" autocomplete="off"
                           placeholder="새 비밀번호 입력"
                           class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700 mb-1">비밀번호 확인</label>
                    <input name="loginPwConfirm" type="text" autocomplete="off"
                           placeholder="비밀번호 확인 입력"
                           class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
                </div>
            </div>

            <!-- 닉네임 / 이메일 -->
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">닉네임</label>
                <input name="nickName" type="text" autocomplete="off" value="${rq.loginedUser.nickName}"
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">이메일</label>
                <input name="email" type="text" autocomplete="off" value="${rq.loginedUser.email}"
                       class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            </div>

            <!-- 팀 선택 -->
            <div class="flex justify-start">
                <a href="../user/teamCheck" class="text-blue-600 hover:underline text-sm">팀 선택</a>
            </div>

            <!-- 버튼 -->
            <div class="flex justify-between items-center mt-6">
                <button type="submit"
                        class="px-5 py-2.5 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition">
                    수정
                </button>
                <button type="button" onclick="history.back();"
                        class="px-5 py-2.5 border border-gray-300 text-gray-700 bg-white rounded-md hover:bg-gray-50 transition">
                    뒤로가기
                </button>
            </div>
        </form>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>