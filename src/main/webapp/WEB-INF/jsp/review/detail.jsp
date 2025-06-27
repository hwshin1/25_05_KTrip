<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-8 px-4 text-lg">
    <div class="mx-auto p-10 overflow-x-auto">
        <h2 class="text-3xl font-bold mb-8 text-gray-900 text-center">후기 상세보기</h2>

        <table class="w-full table-auto border-collapse border border-gray-300 text-gray-800">
            <tbody>
            <tr class="border-b border-gray-300 bg-gray-50">
                <th class="text-left px-4 py-3 font-semibold w-1/3">번호</th>
                <td class="px-4 py-3">${review.id}</td>
            </tr>
            <tr class="border-b border-gray-300">
                <th class="text-left px-4 py-3 font-semibold bg-gray-50">작성날짜</th>
                <td class="px-4 py-3">${review.regDate}</td>
            </tr>
            <tr class="border-b border-gray-300">
                <th class="text-left px-4 py-3 font-semibold bg-gray-50">수정날짜</th>
                <td class="px-4 py-3">${review.updateDate}</td>
            </tr>
            <tr class="border-b border-gray-300">
                <th class="text-left px-4 py-3 font-semibold bg-gray-50">작성자</th>
                <td class="px-4 py-3">${review.userId}</td>
            </tr>
            <tr class="border-b border-gray-300">
                <th class="text-left px-4 py-3 font-semibold bg-gray-50">제목</th>
                <td class="px-4 py-3">${review.title}</td>
            </tr>
            <tr>
                <th class="text-left px-4 py-3 font-semibold bg-gray-50 align-top">내용</th>
                <td class="px-4 py-3 whitespace-pre-wrap">${review.body}</td>
            </tr>
            </tbody>
        </table>

        <div class="mt-8 flex justify-center space-x-4">
            <button type="button"
                    class="px-6 py-2 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition">
                    <a href="/review/list?boardId=2">뒤로가기</a>
            </button>

            <c:if test="${review.userCanModify}">
                <a href="../review/modify?id=${review.id}"
                   class="px-6 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">
                    수정
                </a>
            </c:if>

            <c:if test="${review.userCanDelete}">
                <a href="../review/doDelete?id=${review.id}"
                   class="px-6 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition"
                   onclick="return confirm('정말 삭제하시겠습니까?');">
                    삭제
                </a>
            </c:if>
        </div>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>