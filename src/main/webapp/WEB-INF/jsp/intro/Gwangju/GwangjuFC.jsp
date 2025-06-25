<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://cdn.newswhoplus.com/news/photo/202503/23191_47367_2141.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KGwangju.png" class="mb-2">
                <h1 class="text-3xl mb-4">광주 FC</h1>
                <p class="text-gray-700 mb-4">
                    광주광역시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    2010년 창단 시민구단으로 창단 했다.
                    승격과 강등을 오가다 2022년 혜성 처럼 등장한 이정효 감독에 의해 2부 우승 및 1부 승격
                    그리고 2023년 구단 역사의 각종 기록들을 모조리 갈아치우며 내로라하는 명문구단 및 강팀들을 누르고 3위를 차지 했고 2024년 구단 처음으로 아시아 챔피언스 리그에 진출 하여 리그 스테이지 에서 16강 진출 올해(2025)에는 전력차가 심한 일본팀 비셀 고베를 극적으로 이기며 8강에 진출했다. 하지만 8강에서 우승 후보인 알 힐랄을 만나 대패를 했지만 처음 경험하는 압도적인 수준차이와 패배를 통해 더 많은 것을 배울 수 있는 시즌이 되었다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.gwangjufc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#f6bc00] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러: 노랑색
                    </p>
                    <p class="text-gray-600">
                        노랑색 : R246 / G188 / B0
                    </p>
                    <div class="container flex h-14 bg-[#f6bc00] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        광주 월드컵 경기장
                    </p>
                    <img src="https://img1.daumcdn.net/thumb/R1920x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FeeoNY5%2FbtqLRU673mn%2FAAAAAAAAAAAAAAAAAAAAALSF-Zg9Mb9YZ43Vh9ENcuxj1s-0TV-c-Z_IpX0DXIvl%2Fimg.jpg%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1751295599%26allow_ip%3D%26allow_referer%3D%26signature%3DBtO61DextyJXW3kKX5MM5NKLUT8%253D" class="flex">
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
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Gwangju/restaurant">
                지도 보기
            </a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>