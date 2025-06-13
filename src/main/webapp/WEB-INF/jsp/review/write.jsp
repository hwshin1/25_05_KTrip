<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf"%>
<!-- daisy UI -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/4.12.23/full.css" />

<section class="mt-8 text-xl px-4">
  <div class="mx-auto">
    <form action="../review/doWrite" method="POST">
      <table class="table">
        <tbody>
        <tr>
          <th>제목</th>
          <td>
            <input name="title" type="text" autocomplete="off" placeholder="제목" />
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <input name="body" type="text" autocomplete="off" placeholder="내용" />
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

<%@ include file="../common/foot.jspf" %>