<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="/VideoCapture_20250625-102831.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KUlsan.png" class="mb-2">
                <h1 class="text-3xl mb-4">울산 HD</h1>
                <p class="text-gray-700 mb-4">
                    울산광역시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    1983년에 창단했다.<br>
                    K리그를 넘어 아시아에서도 손꼽히는 명문 클럽이다.<br>
                    AFC 챔피언스 리그 엘리트 2회 우승과 아시아 유일의 ACLE 2회 무패 우승, K리그1 5회 우승과 10회 최다 준우승, 코리아컵 1회 우승과 4회 최다 준우승 타이틀을 가지고 있다. K리그에서 수원 삼성 블루윙즈, 전북 현대 모터스, FC 서울과 함께 가장 많은 인기를 차지하고 있는 구단 중 하나다.
                    <br>
                    <br>
                    또한 4년제 FIFA 클럽 월드컵 32자리에 들어가는데 성공한 K리그 최초 구단이기도 하다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.uhdfc.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#003F98] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 : 파랑색, 노랑색
                    </p>
                    <p class="text-gray-600">
                        파랑색 : R0 / G63 / B152 <br>
                        노랑색 : R245 / G189 / B19
                    </p>
                    <div class="container flex h-14 bg-[#003F98] rounded mb-1"></div>
                    <div class="container flex h-14 bg-[#F5BD13] rounded"></div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        울산 문수 축구 경기장
                        <br>
                        별칭은 빅크라운
                    </p>
                    <img src="/ulsanStadium.webp" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        포항 : 동해안 더비 <br>
                        전북현대 : 현대가 더비
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Ulsan/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>