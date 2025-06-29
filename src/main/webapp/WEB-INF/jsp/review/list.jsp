<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-16 px-4 text-sm text-gray-800 h-screen">
    <div class="max-w-6xl mx-auto">
        <!-- 상단 정보 및 검색 -->
        <div class="flex flex-col md:flex-row items-center justify-between gap-4 mb-6">
            <div class="font-medium text-base">
                <c:if test="${boardId == 2}">
                    ${reviewsCount}개의 후기
                </c:if>
                <c:if test="${boardId == 1}">
                    ${reviewsCount}개의 공지사항
                </c:if>
            </div>

            <form action="../review/list" class="flex flex-wrap gap-2 items-center">
                <input type="hidden" name="boardId" value="${param.boardId}"/>
                <select name="searchKeywordTypeCode"
                        class="border border-gray-300 bg-white rounded-md px-3 py-1.5 text-sm focus:outline-none focus:ring-1 focus:ring-blue-500">
                    <option value="title">제목</option>
                    <option value="body">내용</option>
                    <option value="title,body">제목+내용</option>
                    <option value="nickname">작성자</option>
                </select>
                <input type="text" name="searchKeyword" value="${param.searchKeyword}" placeholder="검색어"
                       class="border border-gray-300 bg-white rounded-md px-3 py-1.5 text-sm w-48 focus:outline-none focus:ring-1 focus:ring-blue-500"/>
                <button type="submit"
                        class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-1.5 rounded-md text-sm shadow-sm transition-all">
                    검색
                </button>
            </form>
        </div>

        <!-- 테이블 -->
        <div class="overflow-x-auto border rounded-lg shadow-sm">
            <table class="w-full text-center text-sm">
                <thead class="bg-gray-100 text-gray-700">
                <tr class="border-b">
                    <th class="py-3 font-medium">ID</th>
                    <th class="py-3 font-medium">작성일</th>
                    <th class="py-3 font-medium">제목</th>
                    <th class="py-3 font-medium">작성자</th>
                </tr>
                </thead>
                <tbody class="bg-white">
                <c:forEach var="review" items="${reviews}">
                    <tr class="hover:bg-gray-50 border-b transition-colors">
                        <td class="py-3">${review.id}</td>
                        <td>${review.regDate.substring(0,10)}</td>
                        <td>
                            <a href="../review/detail?id=${review.id}"
                               class="text-blue-600 hover:underline font-medium">
                                    ${review.title}
                            </a>
                        </td>
                        <td>${review.extra_writer}</td>
                    </tr>
                </c:forEach>
                <c:if test="${empty reviews}">
                    <tr>
                        <td colspan="4" class="text-gray-500 py-6">게시글이 없습니다.</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>

        <!-- 페이징 -->
        <div class="flex justify-center mt-8">
            <div class="flex gap-1">
                <c:set var="paginationLen" value="3"/>
                <c:set var="startPage" value="${page - paginationLen >= 1 ? page - paginationLen : 1}"/>
                <c:set var="endPage" value="${page + paginationLen <= pagesCount ? page + paginationLen : pagesCount}"/>
                <c:set var="baseUri"
                       value="?boardId=${boardId}&searchKeywordTypeCode=${searchKeywordTypeCode}&searchKeyword=${searchKeyword}"/>

                <c:if test="${startPage > 1}">
                    <a class="px-3 py-1 rounded-md border text-sm hover:bg-gray-100" href="${baseUri}&page=1">1</a>
                </c:if>
                <c:if test="${startPage > 2}">
                    <span class="px-2 text-gray-400">...</span>
                </c:if>

                <c:forEach begin="${startPage}" end="${endPage}" var="i">
                    <a class="px-3 py-1 rounded-md border text-sm transition ${param.page == i ? 'bg-gray-800 text-white' : 'hover:bg-gray-100'}"
                       href="${baseUri}&page=${i}">${i}</a>
                </c:forEach>

                <c:if test="${endPage < pagesCount - 1}">
                    <span class="px-2 text-gray-400">...</span>
                </c:if>
                <c:if test="${endPage < pagesCount}">
                    <a class="px-3 py-1 rounded-md border text-sm hover:bg-gray-100"
                       href="${baseUri}&page=${pagesCount}">${pagesCount}</a>
                </c:if>
            </div>
        </div>

        <!-- 글쓰기 버튼 -->
        <div class="flex justify-end mt-8">
            <a href="../review/write"
               class="inline-flex items-center gap-2 px-5 py-2 rounded-lg bg-blue-600 hover:bg-blue-700 text-white text-sm shadow-md transition">
                <i class="fa-solid fa-pen text-sm"></i>
                글쓰기
            </a>
        </div>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>