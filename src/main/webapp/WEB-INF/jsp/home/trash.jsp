<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2025-06-11
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 헤더 예시 -->
<header>
    <div>
        <ul>
            <li><a href="/">HOME</a></li>
            <li><a href="../review/list">LIST</a></li>
            <li><a href="../review/write">글쓰기</a></li>
        </ul>
    </div>
</header>

<!-- 리스트 예시 -->
<section class="mt-8 text-xl px-4">
    <div class="mx-auto">
        <table border="1" cellspacing="0" cellpadding="5">
            <thead>
            <tr>
                <th>번호</th>
                <th>작성 날짜</th>
                <th>제목</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="review" items="${reviews }">
                <tr>
                    <td>${review.id }</td>
                    <td>${review.regDate.substring(0,10) }</td>
                    <td><a href="detail?id=${review.id }">${review.title }</a></td>
                    <td>${review.hit}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
</body>
</html>
