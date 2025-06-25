<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://www.jejuskfc.com/uploadimg/gallery/20250512125009183_d9041ba0d88e4057.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KJeju.png" class="mb-2">
                <h1 class="text-3xl mb-4">제주 SK</h1>
                <p class="text-gray-700 mb-4">
                    제주특별자치도를 연고로 하는 K리그1 소속의 프로 축구단<br>
                    한국 프로 스포츠 사상 최초이자 유일의 제주 연고지 구단이다.
                </p>
                <p class="text-gray-700 mb-2">
                    1987년 창단하였다. 1987년부터 1990년까지는 인천·수원·안양을 아우르는 경인권 연고 구단이었고 1991년부터는 동대문운동장을 홈으로 쓰는 서울 연고 구단이었던 적도 있다. 그러나 1996년 서울 연고 공동화 정책 이후에는 서울 바로 옆 도시인 부천을 연고지로 내세우면서도 부천 시내에 번듯한 경기장이 없어서 2000년까지 서울 목동에서 홈경기를 열었던 시기도 있다. 그러다 2006년 제주로 연고지를 옮겨 현재에 이르고 있다. 간단히 정리하면 1987년부터 2005년까지는 수도권에 줄곧 있었고 2006년부터 제주에서 구단을 운영하고 있다.<br>

                    <br>
                    또한 K리그 출범 이후 K리그1, K리그2를 모두 우승해 본 유일한 구단이기도 하다. (물론 1부 우승 당시는 제주 연고지가 아니였다.)
                    <br>

                    현재는 SK 에너지가 모기업이다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.jejuskfc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#F79A5D] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러: 주황색
                    </p>
                    <p class="text-gray-600">
                        주황색 : R247 / G154 / B93
                        <br>
                        남색 : R125 / G161 / B215
                    </p>
                    <div class="container flex h-14 bg-[#F79A5D] rounded mb-1"></div>
                    <div class="container flex h-14 bg-[#7da1d7] rounded"></div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        제주 월드컵 경기장
                        <br>
                        최근 좌석을 팀컬러인 주황색으로 바꾸고 있어 점점 보기 좋게 되고 있다.
                    </p>
                    <img src="https://www.jejuskfc.com/resources/front/images/sub/clubActivity/stadium_02.jpg" class="flex">
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
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Gwangju/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>