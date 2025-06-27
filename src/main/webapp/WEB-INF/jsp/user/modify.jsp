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

<section class="mt-24 text-xl px-4">
    <div class="mx-auto">
        <form onsubmit="MemberModify__submit(this); return false;" action="../user/doModify" method="POST">
            <table class="w-full border-collapse">
                <tbody>
                <tr>
                    <th>가입일</th>
                    <td class="text-center">${rq.loginedUser.regDate }</td>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td class="text-center">${rq.loginedUser.loginId }</td>
                </tr>
                <tr>
                    <th>새 비밀번호</th>
                    <td class="text-center">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="loginPw"
                               autocomplete="off"
                               type="text" placeholder="새 비밀번호를 입력해"/>
                    </td>
                </tr>
                <tr>
                    <th>새 비밀번호 확인</th>
                    <td class="text-center">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="loginPwConfirm"
                               autocomplete="off" type="text" placeholder="새 비밀번호확인을 입력해"/>
                    </td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td class="text-center">${rq.loginedUser.name }</td>
                </tr>
                <tr>
                    <th>닉네임</th>
                    <td class="text-center">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="nickName"
                               autocomplete="off"
                               type="text" placeholder="닉네임 입력해" value="${rq.loginedUser.nickName }"/>
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td class="text-center">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="email"
                               autocomplete="off"
                               type="text" placeholder="이메일을 입력해" value="${rq.loginedUser.email }"/>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td class="text-center">
                        <button class="btn btn-primary">수정</button>
                    </td>
                </tr>
                </tbody>
            </table>
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

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>