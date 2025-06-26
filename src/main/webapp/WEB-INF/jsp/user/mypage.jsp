<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<div class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="relative group w-full max-w-xs bg-white rounded-2xl shadow-xl overflow-hidden h-96">
        <div class="absolute inset-0 w-full h-full object-cover transition-transform duration-700 group-hover:scale-105 bg-[#9b2743]"></div>

        <!-- 내용 -->
        <div class="relative z-10 flex flex-col items-center justify-end h-full p-6 text-white transition-transform duration-700 transform group-hover:translate-y-0 translate-y-20">
            <!-- 프로필 사진 -->
            <img src="${user.extra_teamLogo}"
                 alt="Profile"
                 class="w-24 h-24 rounded-full border-4 border-white shadow-lg mb-10">
            <!-- 닉네임 -->
            <h2 class="text-2xl font-bold mb-10">${user.nickName}</h2>
            <div>
                <!-- 좋아하는 팀 -->
                <p class="text-sm text-center text-gray-200">${user.extra_teamName}</p>
                <!-- 버튼 -->
                <button class="mt-4 px-5 py-2 text-sm font-bold uppercase tracking-wide bg-white text-black rounded-xl hover:bg-gray-100 transition">
                    <a href="../user/userInfo">내 정보 수정</a>
                </button>
            </div>
        </div>
    </div>
</div>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>