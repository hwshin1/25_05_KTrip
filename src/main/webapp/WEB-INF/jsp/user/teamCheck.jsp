<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<div class="fixed inset-0 bg-black bg-opacity-40 z-50 flex justify-center items-center">
    <form action="../user/doTeamCheck" method="POST">
        <div class="bg-white rounded-xl shadow-2xl p-8 w-full max-w-5xl">
            <h2 class="text-2xl font-bold text-center mb-6">응원할 팀을 선택해주세요</h2>

            <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-6">
                <!-- 팀 카드 -->
                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="서울" class="hidden peer">
                    <img src="/emblem_KSeoul.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-red-600">FC 서울</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="전북" class="hidden peer">
                    <img src="/emblem_KJeonBuk.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">전북현대모터스</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="울산" class="hidden peer">
                    <img src="/emblem_KUlsan.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">울산 HD</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="대전" class="hidden peer">
                    <img src="/emblem_KDaejeon.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">대전하나시티즌</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="대구" class="hidden peer">
                    <img src="/emblem_KDaegu.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">대구 FC</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="안양" class="hidden peer">
                    <img src="/emblem_KAnyang.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">FC 안양</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="포항" class="hidden peer">
                    <img src="/emblem_KPohang.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">포항스틸러스</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="강원" class="hidden peer">
                    <img src="/emblem_KGangwon.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">강원 FC</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="광주" class="hidden peer">
                    <img src="/emblem_KGwangju.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">광주 FC</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="제주" class="hidden peer">
                    <img src="/emblem_KJeju.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">제주 SK</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="수원 FC" class="hidden peer">
                    <img src="/emblem_KSuwonFc.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">수원 FC</span>
                </label>

                <label class="group relative cursor-pointer rounded-lg overflow-hidden border transition block text-center p-4">
                    <input type="radio" name="teamName" value="김천" class="hidden peer">
                    <img src="/emblem_KKimcheon.png" class="w-16 h-16 mb-2 mx-auto">
                    <span class="font-semibold peer-checked:text-green-600">김천상무프로축구단</span>
                </label>
            </div>

            <!-- 확인 버튼 -->
            <div class="text-center mt-8">
                <button type="submit" class="bg-black text-white px-6 py-2 rounded hover:bg-gray-800 transition">
                    선택 완료
                </button>
                <button type="button" onclick="history.back();" class="bg-white border text-black px-6 py-2 rounded hover:bg-gray-300 transition">
                    선택 취소
                </button>
            </div>
        </div>
    </form>
</div>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>