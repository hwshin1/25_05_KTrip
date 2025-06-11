<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>WRITE</title>
</head>
<body>
<section class="mt-8 text-xl px-4">Add commentMore actions
  <div class="mx-auto">
    <form action="../review/doModify" method="POST">
      <input type="hidden" name="id" value="${review.id}" />
      <table border="1" cellspacing="0" cellpadding="5">
        <tbody>
        <tr>
          <th class="text-center">번호</th>
          <td class="text-center">${review.id }</td>
        </tr>
        <tr>
          <th class="text-center">작성날짜</th>
          <td class="text-center">${review.regDate }</td>
        </tr>
        <tr>
          <th class="text-center">수정날짜</th>
          <td class="text-center">${review.updateDate }</td>
        </tr>
        <tr>
          <th class="text-center">제목</th>
          <td class="text-center">
            <input required="required" type="text" name="title" value="${review.title }" autocomplete="off" placeholder="새 제목" />
          </td>
        </tr>
        <tr>
          <th class="text-center">내용</th>
          <td class="text-center">
            <input required="required" type="text" name="body" value="${review.body }" autocomplete="off" placeholder="새 내용" />
          </td>
        </tr>
        <tr>
          <th></th>
          <td class="text-center">
            <input type="submit" value="수정" />
          </td>
        </tr>
        </tbody>
      </table>
      <div>
        <button type="button" onclick="history.back();">뒤로가기</button>
        <a href="../review/doDelete?id=${review.id }">삭제</a>
      </div>
    </form>
  </div>
</section>
</body>
</html>
