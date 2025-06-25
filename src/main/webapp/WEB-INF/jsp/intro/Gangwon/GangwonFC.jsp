<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://mstoday.co.kr/news/photo/202406/92183_86397_1334.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KGangwon.png" class="mb-2">
                <h1 class="text-3xl mb-4">강원 FC</h1>
                <p class="text-gray-700 mb-4">
                    2008년에 강원특별자치도를 연고로 창단한 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    K리그에 15번째로 참가한 구단이며, 대구, 인천, 광주 다음인 네 번째 창단한 시도민 구단이다.<br>
                    대한민국에서 가장 넓은 지역을 연고로 하는 프로 구단이다. 엠블럼의 GREAT UNION은 영서와 영동의 대화합을 의미한다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.gangwon-fc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#dd5828] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 주황
                    </p>
                    <p class="text-gray-600">
                        주황색 : R221 / G88 / B40
                    </p>
                    <div class="container flex h-14 bg-[#dd5828] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        춘천 송암 스포츠 타운, 강릉 하이원 아레나<br>강원도민 구단이라 춘천과 강릉을 왔다갔다 한다.
                    </p>
                    <p>춘천 송암 스포츠 타운</p>
                    <img src="https://i.namu.wiki/i/pqgZ4YqKeD2riP_yLbUNqFvWbwS_4IzpsVGWG1-e2PiG3xjn9QYKKLLgv7xB0Pj-Wns9Eg_NqsumnyBFPNhgSoJpRPydXpEzhuLb_0oU38YH3aNS70yjIfJOQ9DIeXZ8fevsyzoYd6ko4MDLJKTcAw.webp" class="w-full">
                    <p>강릉 하이원 아레나</p>
                    <img src="https://i.namu.wiki/i/As8zH-XfME8bFUcE5l-4962hmzEzxLREiR2VrdY3sL-0LfWBFPrVortumEwSV3kX2wS7-O2GVIIMNYUntUpWoJX6r-jcVlP5NeTaWV0lGh5_HdCf1Hkmy2A3XhjW2hpBvooEYb6R-hll1ZHAa_2z2w.webp" class="w-full">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">

                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Gangwon/restaurant">춘천 구장 지도 보기</a>
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Gangwon/restaurant2">강릉 구장 지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>