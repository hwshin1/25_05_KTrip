<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>WRITE</title>
</head>
<body>
<section class="mt-8 text-xl px-4">
  <div class="mx-auto">
    <form action="../review/doWrite" method="POST">
      <table>
        <tbody>
        <tr>
          <th>제목</th>
          <td>
            <input required="required" name="title" type="text" autocomplete="off" placeholder="제목" />
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <input name="body" autocomplete="off" type="text" placeholder="내용" />
          </td>
        </tr>
        <tr>
          <th></th>
          <td>
            <button>작성</button>
          </td>
        </tr>
        </tbody>
      </table>
    </form>
    <div>
      <button type="button" onclick="history.back();">뒤로가기</button>
    </div>
  </div>
</section>
</body>
</html>
