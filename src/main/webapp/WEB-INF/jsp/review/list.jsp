<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<header>
    <div>
        <ul>
            <li><a href="/">HOME</a></li>
            <li><a href="../review/list">LIST</a></li>
            <li><a href="../review/write">글쓰기</a></li>
        </ul>
    </div>
</header>

<section class="mt-24 text-xl px-4">
    <div class="max-w-6xl mx-auto">
        <div class="mb-6 flex flex-wrap items-center justify-between gap-4">
            <c:if test="${boardId == 2}">
                <div class="text-base font-semibold">${reviewsCount}개의 후기</div>
            </c:if>
            <c:if test="${boardId == 1}">
                <div class="text-base font-semibold">${reviewsCount}개의 공지사항</div>
            </c:if>

            <form action="../review/list" class="flex items-center gap-2">
                <input type="hidden" name="boardId" value="${param.boardId}"/>

                <select name="searchKeywordTypeCode" class="select select-sm select-bordered"
                        data-value="${param.searchKeywordTypeCode}">
                    <option value="title">제목</option>
                    <option value="body">내용</option>
                    <option value="title,body">제목+내용</option>
                    <option value="nickname">작성자</option>
                </select>

                <label class="input input-bordered input-sm flex items-center gap-2">
                    <input type="text" name="searchKeyword" placeholder="검색어 입력" value="${param.searchKeyword}"
                           class="bg-transparent focus:outline-none"/>
                    <button type="submit">
                        <i class="fa-solid fa-magnifying-glass h-4 w-4 opacity-70"></i>
                    </button>
                </label>
            </form>
        </div>

        <div class="overflow-x-auto">
            <table class="table w-full text-center border border-gray-300">
                <thead class="bg-gray-100 text-sm">
                <tr>
                    <th>ID</th>
                    <th>작성일</th>
                    <th>제목</th>
                    <th>작성자</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="review" items="${reviews}">
                    <tr class="hover:bg-base-200">
                        <td>${review.id}</td>
                        <td>${review.regDate.substring(0,10)}</td>
                        <td class="text-left">
                            <a href="../review/detail?id=${review.id}" class="hover:underline">${review.title}</a>
                        </td>
                        <td>${review.extra_writer}</td>
                    </tr>
                </c:forEach>

                <c:if test="${empty reviews}">
                    <tr>
                        <td colspan="7" class="text-center py-4 text-gray-500">게시글이 없습니다.</td>
                    </tr>
                </c:if>
                </tbody>
            </table>
        </div>

        <!-- 페이징 -->
        <div class="flex justify-center mt-6">
            <div class="btn-group join">
                <c:set var="paginationLen" value="3"/>
                <c:set var="startPage" value="${page - paginationLen >= 1 ? page - paginationLen : 1}"/>
                <c:set var="endPage" value="${page + paginationLen <= pagesCount ? page + paginationLen : pagesCount}"/>
                <c:set var="baseUri"
                       value="?boardId=${boardId}&searchKeywordTypeCode=${searchKeywordTypeCode}&searchKeyword=${searchKeyword}"/>

                <c:if test="${startPage > 1}">
                    <a class="join-item btn btn-sm" href="${baseUri}&page=1">1</a>
                </c:if>

                <c:if test="${startPage > 2}">
                    <button class="join-item btn btn-sm btn-disabled">...</button>
                </c:if>

                <c:forEach begin="${startPage}" end="${endPage}" var="i">
                    <a class="join-item btn btn-sm ${param.page == i ? 'btn-active' : ''}"
                       href="${baseUri}&page=${i}">${i}</a>
                </c:forEach>

                <c:if test="${endPage < pagesCount - 1}">
                    <button class="join-item btn btn-sm btn-disabled">...</button>
                </c:if>

                <c:if test="${endPage < pagesCount}">
                    <a class="join-item btn btn-sm" href="${baseUri}&page=${pagesCount}">${pagesCount}</a>
                </c:if>
            </div>
        </div>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>
