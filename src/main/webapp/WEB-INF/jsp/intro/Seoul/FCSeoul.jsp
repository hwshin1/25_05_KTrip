<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://files.fcseoul.com/multi01/Imgs/mainIndex/1688102197560.png"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KSeoul.png" class="mb-2">
                <h1 class="text-3xl mb-4">FC 서울</h1>
                <p class="text-gray-700 mb-4">
                    서울특별시를 연고지로 하고 있는 K리그1 소속 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    1983년 럭키금성에서 창단했다. 이후에 금성이 LG로 되고 LG 에서 GS가 또 분리되어 LG는 야구, 농구단으로 가고 GS가 여자 배구와 축구단을 맡았다.<br>
                    1990년 K리그 우승을 통해 프로 스포츠 서울 연고 구단 중 최초 우승 기록을 세웠으며 , K리그1 6회 우승(1985, 1990, 2000, 2010, 2012, 2016), 코리아컵 2회 우승(1998, 2015), 리그컵 2회 우승(2006, 2010) 타이틀을 가지고 있다. 1980년대, 1990년대, 2000년대, 2010년대까지 매 10년대마다 한 번 이상 리그 우승컵을 들어올렸다.
                    <br>
                    대한민국 프로 스포츠 단일 경기 역대 최다 관중 기록과 K리그 단일 시즌 역대 최다 승점 기록을 보유하고 있다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.fcseoul.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#b5191a] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 : 빨강색, 검은색
                    </p>
                    <p class="text-gray-600">
                        빨강색 : R181 / G25 / B26
                        <br>
                        검은색 : R0 / G0 / B0
                    </p>
                    <div class="container flex h-14 bg-linear-65 from-[#b5191a] to-[#000000] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        서울 월드컵 경기장
                    </p>
                    <img src="/VideoCapture_20250625-102859.jpg" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        수원 삼성 : 슈퍼매치(가장 뜨거운 매치)<br>
                        전북 현대 : 전설매치<br>
                        인천 : 경인 더비
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Seoul/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>