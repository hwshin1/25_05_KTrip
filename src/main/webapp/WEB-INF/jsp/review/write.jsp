<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-12 px-4 text-xl">
    <div class="max-w-3xl mx-auto bg-white p-8 rounded-2xl shadow-lg">
        <h2 class="text-2xl font-bold mb-6 text-gray-800">후기 작성</h2>

        <form action="../review/doWrite" method="POST" class="space-y-6">
            <!-- 게시판 선택 -->
            <div>
                <label class="block mb-2 font-semibold text-gray-700">게시판 선택</label>
                <select name="boardId" required class="w-full">
                    <option value="" selected disabled>게시판을 선택해주세요</option>
                    <c:if test="${user.authLevel == 7}">
                        <option value="1">공지사항</option>
                    </c:if>
                    <option value="2">후기</option>
                </select>
            </div>

            <!-- 제목 -->
            <div>
                <label class="block mb-2 font-semibold text-gray-700">제목</label>
                <input name="title" type="text" autocomplete="off" required
                       placeholder="제목을 입력하세요"
                       class="input input-bordered w-full"/>
            </div>

            <!-- 내용 -->
            <div>
                <label class="block mb-2 font-semibold text-gray-700">내용</label>
                <textarea name="body" rows="6" autocomplete="off" required
                          placeholder="내용을 입력하세요"
                          class="textarea textarea-bordered w-full resize-none"></textarea>
            </div>

            <!-- 별점 -->
            <div>
                <label class="block mb-1 font-semibold text-gray-700">별점</label>
                <select name="rating" class="select select-bordered w-full max-w-xs">
                    <option value="5">★★★★★ (5점)</option>
                    <option value="4">★★★★☆ (4점)</option>
                    <option value="3">★★★☆☆ (3점)</option>
                    <option value="2">★★☆☆☆ (2점)</option>
                    <option value="1">★☆☆☆☆ (1점)</option>
                </select>
            </div>

            <!-- 버튼 -->
            <div class="flex justify-between items-center">
                <button type="submit"
                        class="px-6 py-2 bg-gray-500 text-white font-semibold rounded-lg shadow hover:bg-gray-400 transition duration-200 flash-on-click">
                    작성
                </button>
                <button type="button" onclick="history.back();"
                        class="px-6 py-2 border border-gray-300 text-gray-700 font-semibold rounded-lg hover:bg-gray-100 transition duration-200 flash-on-click">
                    취소
                </button>
            </div>
        </form>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>