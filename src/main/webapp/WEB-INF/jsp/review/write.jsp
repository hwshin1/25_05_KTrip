<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<section class="mt-12 px-4 text-lg bg-gray-50 min-h-screen flex items-center justify-center">
  <div class="max-w-xl w-full bg-white p-8 rounded-3xl shadow-lg">
    <h2 class="text-3xl font-extrabold mb-8 text-gray-900 text-center">후기 작성하기</h2>

    <form action="../review/doWrite" method="POST" class="space-y-7">
      <!-- 게시판 선택 -->
      <div>
        <label for="boardId" class="block mb-2 font-semibold text-gray-700">게시판 선택</label>
        <select id="boardId" name="boardId" required
                class="w-full border border-gray-300 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-400">
          <option value="" disabled selected>게시판을 선택해주세요</option>
          <c:if test="${user.authLevel == 7}">
            <option value="1">공지사항</option>
          </c:if>
          <option value="2">후기</option>
        </select>
      </div>

      <!-- 제목 -->
      <div>
        <label for="title" class="block mb-2 font-semibold text-gray-700">제목</label>
        <input id="title" name="title" type="text" autocomplete="off" required
               placeholder="제목을 입력하세요"
               class="w-full border border-gray-300 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-400"/>
      </div>

      <!-- 내용 -->
      <div>
        <label for="body" class="block mb-2 font-semibold text-gray-700">내용</label>
        <textarea id="body" name="body" rows="6" autocomplete="off" required
                  placeholder="내용을 입력하세요"
                  class="w-full border border-gray-300 rounded-md px-4 py-3 resize-none focus:outline-none focus:ring-2 focus:ring-indigo-400"></textarea>
      </div>

      <!-- 버튼 -->
      <div class="flex justify-between items-center pt-4 border-t border-gray-200">
        <button type="submit"
                class="px-8 py-3 bg-indigo-600 text-white font-semibold rounded-lg shadow hover:bg-indigo-700 transition duration-200">
          작성하기
        </button>
        <button type="button" onclick="history.back();"
                class="px-8 py-3 border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-100 transition duration-200">
          취소
        </button>
      </div>
    </form>
  </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>