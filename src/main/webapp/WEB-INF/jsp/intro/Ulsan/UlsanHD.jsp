<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://hyundai-motorsfc.com/img/img_stadium_3.099b2392.png"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KJeonBuk.png" class="mb-2 w-[139px] h-[180px]">
                <h1 class="text-3xl mb-4">전북현대모터스</h1>
                <p class="text-gray-700 mb-4">
                    전북특별자치도를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    K리그1 9회 최다 우승(2009, 2011, 2014, 2015, 2017, 2018, 2019, 2020, 2021)과 최다 연속 우승(2017~2021, 5연패), 코리아컵 5회 우승(2000, 2003, 2005, 2020, 2022), 슈퍼컵 1회 우승(2004), AFC 챔피언스 리그 엘리트 2회 우승(2006, 2016) 타이틀을 가지고 있다. ACLE 우승팀 자격으로 2006년과 2016년 FIFA 클럽 월드컵에 참가한 이력도 보유하고 있다.<br>
                    올해 epl 감독 출신인 거스 포옛을 감독으로 선임하고 현재 1위를 달리고 있다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://hyundai-motorsfc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#00523D] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러: 초록색
                    </p>
                    <p class="text-gray-600">
                        초록색 : R0 / G82 / B61
                    </p>
                    <div class="container flex h-14 bg-[#00523D] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        전주 월드컵 경기장
                        <br>
                        별칭은 전주성이라고 부른다. 정면에서 봤을때 성처럼 보인다고 해서 붙여진 이름
                    </p>
                    <img src="/20240301_155059.jpg" class="flex">
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
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Jeonju/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/foot.jspf" %>