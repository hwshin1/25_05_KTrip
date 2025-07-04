<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="h-screen max-w-3xl mx-auto mt-12 px-4 text-base">
    <form action="/review/doModify" method="POST" class="bg-white shadow-md rounded-xl p-6 space-y-6">
        <input type="hidden" name="id" value="${review.id}"/>

        <div>
            <label class="block font-semibold mb-1 text-gray-700">번호</label>
            <div class="px-3 py-2 bg-gray-100 rounded-md">${review.id}</div>
        </div>

        <div class="grid grid-cols-2 gap-4">
            <div>
                <label class="block font-semibold mb-1 text-gray-700">작성 날짜</label>
                <div class="px-3 py-2 bg-gray-100 rounded-md">${review.regDate}</div>
            </div>
            <div>
                <label class="block font-semibold mb-1 text-gray-700">수정 날짜</label>
                <div class="px-3 py-2 bg-gray-100 rounded-md">${review.updateDate}</div>
            </div>
        </div>

        <div>
            <label for="title" class="block font-semibold mb-1 text-gray-700">제목</label>
            <input
                required
                type="text"
                name="title"
                id="title"
                value="${review.title}"
                placeholder="새 제목"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                autocomplete="off"
            />
        </div>

        <div>
            <label for="body" class="block font-semibold mb-1 text-gray-700">내용</label>
            <textarea
                required
                name="body"
                id="body"
                rows="5"
                placeholder="새 내용"
                class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            >${review.body}</textarea>
        </div>

        <div class="flex justify-between items-center">
            <div class="space-x-2">
                <button type="submit"
                        class="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-lg shadow">
                    수정
                </button>
                <button type="button" onclick="history.back();"
                        class="bg-gray-400 hover:bg-gray-500 text-white font-medium py-2 px-4 rounded-lg shadow">
                    뒤로가기
                </button>
            </div>
            <c:if test="${review.userCanDelete}">
                <a href="../review/doDelete?id=${review.id}"
                   class="bg-gray-400 hover:bg-gray-500 text-white font-semibold py-2 px-4 rounded-lg shadow">
                    삭제
                </a>
            </c:if>
        </div>
    </form>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>