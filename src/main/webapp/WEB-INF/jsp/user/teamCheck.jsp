<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<div class="fixed inset-0 bg-black bg-opacity-40 z-50 flex justify-center items-center">
    <div class="bg-white rounded-xl shadow-2xl p-8 w-full max-w-5xl">
        <h2 class="text-2xl font-bold text-center mb-6">응원할 팀을 선택해주세요</h2>

        <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-6">
            <!-- 팀 카드 (선택 가능) -->
            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('FC서울')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KSeoul.png" alt="FC 서울" class="w-16 h-16 mb-2">
                    <span class="font-semibold">FC 서울</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('전북현대')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KJeonBuk.png" alt="전북현대모터스" class="w-16 h-16 mb-2">
                    <span class="font-semibold">전북현대모터스</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('울산HD')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KUlsan.png" alt="울산HD" class="w-16 h-16 mb-2">
                    <span class="font-semibold">울산 HD</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('대전하나시티즌')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KDaejeon.png" alt="대전하나시티즌" class="w-16 h-16 mb-2">
                    <span class="font-semibold">대전하나시티즌</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('대구FC')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KDaegu.png" alt="대구 FC" class="w-16 h-16 mb-2">
                    <span class="font-semibold">대구 FC</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('FC안양')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KAnyang.png" alt="FC 안양" class="w-16 h-16 mb-2">
                    <span class="font-semibold">FC 안양</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('포항스틸러스')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KPohang.png" alt="포항스틸러스" class="w-16 h-16 mb-2">
                    <span class="font-semibold">포항스틸러스</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('강원FC')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KGangwon.png" alt="강원 FC" class="w-16 h-16 mb-2">
                    <span class="font-semibold">강원 FC</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('광주FC')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KGwangju.png" alt="광주 FC" class="w-16 h-16 mb-2">
                    <span class="font-semibold">광주 FC</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('제주SK')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KJeju.png" alt="제주 SK" class="w-16 h-16 mb-2">
                    <span class="font-semibold">제주 SK</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('수원FC')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KSuwonFc.png" alt="수원 FC" class="w-16 h-16 mb-2">
                    <span class="font-semibold">수원 FC</span>
                </div>
            </div>

            <div class="group relative cursor-pointer rounded-lg overflow-hidden border transition"
                 onclick="selectTeam('김천상무프로축구단')">
                <div class="absolute inset-0 bg-opacity-0 group-hover:bg-opacity-10 transition"></div>
                <div class="p-4 flex flex-col items-center">
                    <img src="/emblem_KKimcheon.png" alt="김천상무프로축구단" class="w-16 h-16 mb-2">
                    <span class="font-semibold">김천상무프로축구단</span>
                </div>
            </div>
        </div>

        <!-- 확인 버튼 -->
        <div class="text-center mt-8">
            <button onclick="confirmTeam()" class="bg-black text-white px-6 py-2 rounded hover:bg-gray-800 transition">
                선택 완료
            </button>
        </div>
    </div>
</div>

<script>
    let selectedTeam = null;

    function selectTeam(teamId) {
        selectedTeam = teamId;
        document.querySelectorAll('.group').forEach(card => {
            card.classList.remove('ring', 'ring-2', 'ring-black');
        });
        const card = [...document.querySelectorAll('.group')].find(c => c.onclick.toString().includes(teamId));
        card.classList.add('ring', 'ring-2', 'ring-black');
    }

    function confirmTeam() {
        if (!selectedTeam) {
            alert('팀을 선택해주세요!');
            return;
        }

        // 예시: 저장 처리
        localStorage.setItem('favoriteTeam', selectedTeam);
        alert(`${selectedTeam} 팀을 선택하셨습니다!`);
        // location.href = "/home"; // 홈으로 이동 등 추가 가능
    }
</script>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>