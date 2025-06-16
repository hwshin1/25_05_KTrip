<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/head.jspf" %>
<h1>Modify User</h1>
<hr/>
<script type="text/javascript">
    function MemberModify__submit(form) {
        form.loginPw.value = form.loginPw.value.trim();

        if (form.loginPw.value.length > 0) {
            form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
            if (form.loginPwConfirm.value == 0) {
                alert('비번 확인 써');
                return;
            }

            if (form.loginPwConfirm.value != form.loginPw.value) {
                alert('비번 불일치');
                return;
            }

        }

        form.submit();
    }
</script>

<section class="mt-24 text-xl px-4">
    <div class="mx-auto">
        <form onsubmit="MemberModify__submit(this); return false;" action="../member/doModify" method="POST">
            <table class="table" border="1" cellspacing="0" cellpadding="5"
                   style="width: 100%; border-collapse: collapse;">
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
                    <th>새 비밀번호</th>
                    <td style="text-align: center;">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="loginPw"
                               autocomplete="off"
                               type="text" placeholder="새 비밀번호를 입력해"/>
                    </td>
                </tr>
                <tr>
                    <th>새 비밀번호 확인</th>
                    <td style="text-align: center;">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="loginPwConfirm"
                               autocomplete="off" type="text" placeholder="새 비밀번호확인을 입력해"/>
                    </td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td style="text-align: center;">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="name"
                               autocomplete="off"
                               type="text" placeholder="이름 입력해" value="${rq.loginedMember.name }"/>
                    </td>
                </tr>
                <tr>
                    <th>닉네임</th>
                    <td style="text-align: center;">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="nickname"
                               autocomplete="off"
                               type="text" placeholder="닉네임 입력해" value="${rq.loginedMember.nickname }"/>
                    </td>

                </tr>
                <tr>
                    <th>이메일</th>
                    <td style="text-align: center;">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="email"
                               autocomplete="off"
                               type="text" placeholder="이메일을 입력해" value="${rq.loginedMember.email }"/>
                    </td>

                </tr>
                <tr>
                    <th></th>
                    <td style="text-align: center;">
                        <button class="btn btn-primary">수정</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
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