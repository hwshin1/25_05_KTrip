<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-24 text-xl px-4">
    <div class="mx-auto">
        <form action="../user/doCheckPw" method="POST">
            <table class="table" style="width: 100%; border-collapse: collapse;">
                <tbody>
                <tr>
                    <th class="text-center">아이디</th>
                    <td class="text-center">${rq.loginedUser.loginId }</td>
                </tr>
                <tr>
                    <th class="text-center">비밀번호</th>
                    <td class="text-center">
                        <input class="input input-bordered input-primary input-sm w-full max-w-xs" name="loginPw"
                               autocomplete="off"
                               type="text" placeholder="비밀번호를 입력해"/>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td class="text-center">
                        <button type="submit" class="px-4 py-2 border border-gray-400
                        text-gray-700 text-base bg-white hover:bg-gray-100 rounded-md transition duration-200">
                            확인
                        </button>
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