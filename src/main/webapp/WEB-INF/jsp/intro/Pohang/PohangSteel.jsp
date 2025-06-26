<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://newsroom.posco.com/kr/wp-content/uploads/2024/12/202412021447443a3f545f-5287-440c-87d0-afce4bb133ff.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KPohang.png" class="mb-2">
                <h1 class="text-3xl mb-4">포항 스틸러스</h1>
                <p class="text-gray-700 mb-4">
                    경상북도 포항시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    대한민국에서 가장 오래된 프로 축구단으로 많은 국가대표 선수를 배출했다. 52년의 역사와 함께 K리그1 5회 우승(1986, 1988, 1992, 2007, 2013), 코리아컵 6회 최다 우승(1996, 2008, 2012, 2013, 2023, 2024), AFC 챔피언스 리그 엘리트 3회 우승(1996-97, 1997-98, 2009) 기록을 가지고 있다. 아울러 1983년 프로축구 출범이후 10년대마다 주요 대회 우승컵을 한 번 이상 들어올린 K리그 유일의 구단이기도 하다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.steelers.co.kr" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#8A060F] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 : 검은색, 빨강색
                    </p>
                    <p class="text-gray-600">
                        검은색 : R22 / G22 / B22<br>
                        빨강색 : R138 / G6 / B15
                    </p>
                    <div class="container flex h-14 bg-linear-to-t from-[#161616] to-[#8A060F] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        포항 스틸야드
                    </p>
                    <img src="/20240615_164050.jpg" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        울산 : 동해안 더비
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition"
               href="../intro/Pohang/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>