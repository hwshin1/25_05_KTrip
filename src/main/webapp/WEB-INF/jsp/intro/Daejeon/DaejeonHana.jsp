<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="/VideoCapture_20250626-202416.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KDaejeon.png" class="mb-2">
                <h1 class="text-3xl mb-4">대전하나시티즌</h1>
                <p class="text-gray-700 mb-4">
                    1997년에 창단된 대전광역시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    1997년 대전/충남 연고 기업인 계룡건설, 동아건설, 동양백화점, 충청은행의 컨소시엄 형태의 기업구단으로 창단. 하지만 1998년 IMF 구제금융 위기로 컨소시엄을 구성했던 기업들 중 동아건설, 동양백화점, 충청은행이 파산하고 2006년 구단 운영의 재정적 한계로 인해 계룡건설이 구단을 대전광역시에 매각하면서 시민구단으로 전환되었다. 2020년 하나금융그룹이 대전광역시로부터 구단을 인수하면서 다시 기업구단으로 전환되었다.
                </p>
                <a class="inline-block bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700 transition"
                   href="https://www.dhcfc.kr/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#8E253F] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        자줏빛 낭만 초록빛 희망
                    </p>
                    <p class="text-gray-600">
                        자주색 : R142 / G37 / B63
                        <br>
                        하나그린 : R0 / G122 / B108
                    </p>
                    <div class="container flex h-14 bg-linear-65 from-[#007A6C] to-[#8E253F] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">
                        대전 월드컵 경기장 별칭은 퍼플 아레나 (자주색도 영어론 퍼플이라고 한다)
                    </p>
                    <img src="/20230712_180937.jpg" class="flex">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        수원 삼성 : 축구 수도 더비
                        강원 : 볼보이 더비 (볼보이 사건으로 인해 감정이 격해짐)
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition" href="../intro/Daejeon/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>