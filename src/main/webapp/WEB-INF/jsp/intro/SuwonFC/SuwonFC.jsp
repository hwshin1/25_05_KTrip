<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="/20250614_214310954.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KSuwonFc.png" class="mb-2">
                <h1 class="text-3xl mb-4">수원 FC</h1>
                <p class="text-gray-700 mb-4">
                    경기도 수원시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    2003년 수원시청 축구단으로 창단.<br>
                    2013년부터 수원 FC로 명칭을 바꾸고 프로진출을 선언해 2부리그에 참가했다.
                    당시 2부 리그 격이었던 내셔널리그에서 시작해 2013년 승강제와 함께 신설된 K리그2를 거쳐 1부 리그 K리그1까지 승격한 유일한 구단이다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.suwonfc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#00396F] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러: 청색, 적색
                    </p>
                    <p class="text-gray-600">
                        청색 : R0 / G57 / B111 <br>
                        적색 : R235 / G0 / B40
                    </p>
                    <div class="container flex h-14 bg-[#00396F] rounded mb-1"></div>
                    <div class="container flex h-14 bg-[#eb0028] rounded"></div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        수원 종합 운동장
                    </p>
                    <img src="/20240414_132521.jpg" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        수원 삼성 : 수원더비<br>
                        안양 : 1호선 더비<br>
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/SuwonFC/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>