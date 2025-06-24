<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<title>K리그 구단 소개</title>

<section class="w-full h-auto relative bg-white tracking-wide">
    <!-- 상단 응원가 카드 -->
    <div class="grid grid-cols-2 h-[750px]">
        <div class="flex flex-col justify-end items-start p-10 text-white bg-black/30 border-r border-black">
            <iframe width="100%;" height="100%;" src="https://www.youtube.com/embed/kpBBzOly-Vw?si=W5egq8EE81nCEuQv"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"></iframe>
            <div class="relative">
                <h2 class="text-[32px] font-bold mb-3">대전 응원가 모음</h2>
                <p class="text-[15px] mb-8">대전! 너와 함께 웃고<br>너와 함께 울고<br>항상 함께 해</p>
                <button class="bg-white text-black px-4 py-2 text-center border rounded-full border-gray-300 hover:bg-gray-100">
                    <a href="https://www.youtube.com/watch?v=kpBBzOly-Vw" class="block">자세히 보기</a>
                </button>
            </div>
        </div>
        <div class="flex flex-col justify-end items-start p-10 bg-black/30 text-white">
            <iframe width="100%;" height="100%;" src="https://www.youtube.com/embed/XDuc_OTRfoE?si=mDVw_NxerpH-KGiB"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    referrerpolicy="strict-origin-when-cross-origin"></iframe>
            <div class="relative">
                <h2 class="text-[32px] font-bold mb-3">전북 응원가 모음</h2>
                <p class="text-[15px] mb-8">영원하라 전북<br>오! 우리의 전북<br>너를 위해 우리 노래해</p>
                <button class="bg-white text-black px-4 py-2 text-center border rounded-full border-gray-300 hover:bg-gray-100">
                    <a href="https://www.youtube.com/watch?v=XDuc_OTRfoE" class="block">자세히 보기</a>
                </button>
            </div>
        </div>
    </div>

    <!-- 팀 필터 -->
    <div class="w-full h-[100px] border-t border-b relative text-lg flex items-center">
        <div class="text-black text-xl ml-12">K 리그 팀</div>
        <ul class="flex absolute left-auto right-12 gap-4">
            <li class="relative text-black">
                ALL
                <span class="absolute bg-black left-0 w-full h-[2px] bottom-0"></span>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Seoul">FC 서울</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Jeonju">전북현대모터스</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Ulsan">울산 HD</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Daejeon">대전하나시티즌</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Daegu">대구 FC</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Pohang">포항 스틸러스</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Anyang">FC 안양</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Gangwon">강원 FC</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Jeju">제주 SK</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Gwangju">광주 FC</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/SuwonFC">수원 FC</a>
            </li>
            <li class="relative text-gray-500 hover:text-black">
                <a href="../intro/Kimcheon">김천상무프로축구단</a>
            </li>
        </ul>
    </div>

    <!-- 구단 카드 리스트 -->
    <div class="relative max-w-full h-auto">
        <div class="grid grid-cols-4">
            <!-- FC 서울 -->
            <div class="relative h-[750px] bg-[url(/fcseoulpic.png)] bg-center group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">FC 서울</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Seoul">자세히 보기</a>
                    </button>
                </div>
            </div>

            <!-- 전북현대모터스 -->
            <div class="relative h-[750px] bg-[url(/jeonbukpic.png)] bg-center group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">전북현대모터스</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Jeonju">자세히 보기</a>
                    </button>
                </div>
            </div>

            <!-- 울산 HD -->
            <div class="relative h-[750px] bg-[url(/ulsanpic.png)] bg-center group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">울산 HD</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Ulsan">자세히 보기</a>
                    </button>
                </div>
            </div>

            <!-- 대전하나시티즌 -->
            <div class="relative h-[750px] bg-[url(/daejeonpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">대전하나시티즌</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Daejeon">자세히 보기</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="relative w-auto h-auto">
        <div class="grid grid-cols-4">
            <%-- 대구 FC --%>
            <div class="relative h-[750px] bg-[url(/daegupic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">대구 FC</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Daegu">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- FC 안양 --%>
            <div class="relative h-[750px] bg-[url(/Anyangpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">FC 안양</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Anyang">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- 포항 스틸러스 --%>
            <div class="relative h-[750px] bg-[url(/pohangpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">포항 스틸러스</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Pohang">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- 강원 FC --%>
            <div class="relative h-[750px] bg-[url(/gangwonpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">강원 FC</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Gangwon">자세히 보기</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="relative max-w-full h-auto">
        <div class="grid grid-cols-4">
            <%-- 제주 SK --%>
            <div class="relative h-[750px] bg-[url(/jejupic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">제주 SK</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Jeju">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- 광주 FC --%>
            <div class="relative h-[750px] bg-[url(/gwangjupic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">광주 FC</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Gwangju">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- 수원 FC --%>
            <div class="relative h-[750px] bg-[url(/suwonfcpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">수원 FC</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/SuwonFC">자세히 보기</a>
                    </button>
                </div>
            </div>

            <%-- 김천상무 --%>
            <div class="relative h-[750px] bg-[url(/kimcheonpic.png)] group overflow-hidden border-t border-r">
                <!-- 오버레이 -->
                <div class="absolute inset-0 group-hover:bg-black/20 transition duration-300"></div>
                <div class="absolute bottom-0 left-0 right-0 p-4 translate-y-full group-hover:translate-y-0 transition-transform duration-500 ease-in-out">
                    <h3 class="text-white font-bold text-lg">김천상무프로축구단</h3>
                    <button class="mt-2 opacity-50 bg-white text-black px-3 py-1 text-sm w-[120px] h-[48px]">
                        <a href="../intro/Kimcheon">자세히 보기</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../common/footer.jspf" %>
</section>

<%@ include file="../common/foot.jspf" %>