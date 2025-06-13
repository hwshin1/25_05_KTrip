<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>
<!-- daisy UI -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/4.12.23/full.css" />
<section>
    <div class="overflow-x-auto">
        <table class="table">
            <!-- head -->
            <thead>
            <tr>
                <th></th>
                <th>작성일</th>
                <th>제목</th>
                <th>userId</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="review" items="${reviews}">
                <tr class="hover:bg-base-300">
                    <th>${review.id}</th>
                    <td>${review.regDate.substring(0, 10)}</td>
                    <td><a href="/review/detail?id=${review.id}">${review.title}</a></td>
                    <td>${review.userId}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<%@ include file="../common/foot.jspf" %>
