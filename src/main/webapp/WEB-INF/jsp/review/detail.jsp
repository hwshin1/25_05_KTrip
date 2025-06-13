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
      <tbody>
      <tr>
        <th>번호</th>
        <td>${review.id }</td>
      </tr>
      <tr>
        <th>작성날짜</th>
        <td>${review.regDate }</td>
      </tr>
      <tr>
        <th>수정날짜</th>
        <td>${review.updateDate }</td>
      </tr>
      <tr>
        <th>작성자</th>
        <td>${review.userId }</td>
      </tr>
      <tr>
        <th>제목</th>
        <td>${review.title }</td>
      </tr>
      <tr>
        <th>내용</th>
        <td>${review.body }</td>
      </tr>
      <tr>
        <th>별점</th>
        <td>${review.rating }</td>
      </tr>
      </tbody>
    </table>
    <div>
      <button type="button" onclick="history.back();">뒤로가기</button>
      <a href="../review/modify?id=${review.id }">수정</a>
      <a href="../review/doDelete?id=${review.id }">삭제</a>
    </div>
  </div>
</section>
</body>
</html>
