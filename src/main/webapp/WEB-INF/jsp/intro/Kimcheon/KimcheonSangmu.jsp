<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://cdnimage.dailian.co.kr/news/202409/news_1726450845_1407887_m_1.jpeg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KKimcheon.png" class="mb-2">
                <h1 class="text-3xl mb-4">김천상무프로축구단</h1>
                <p class="text-gray-700 mb-4">
                    경상북도 김천시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    2021년에 창단하였고 K리그의 유일한 군경 구단이며 국군체육부대 소속이나 실질적인 관리는 김천시가 하고 있다. 일종의 시민 구단인 셈.
                    원래 상무팀은 2021년 전에도 있었다. 다만 군경팀은 그 지역과 계약이 끝나면 다른 곳으로 이전한다.
                    이전하고 나서도 다시 창단을 해야 한다. 창단하고 나면 2부 부터 시작해야 한다. 그래서 팬들 입장에서는 이 팀을 응원하기가 어렵다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.gimcheonfc.com" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#b81c22] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러: 붉은색
                    </p>
                    <p class="text-gray-600">
                        붉은색 : R184 / G28 / B34
                    </p>
                    <div class="container flex h-14 bg-[#b81c22] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        김천 종합 운동장
                    </p>
                    <img src="https://www.imaeil.com/photos/2021/03/31/2021033113250070605_l.jpg" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Kimcheon/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>