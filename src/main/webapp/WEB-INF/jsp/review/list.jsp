<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>LIST</title>
</head>
<body>
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
