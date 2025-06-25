<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://www.fc-anyang.com/images/mgrPic/TMainPage/TMainPage-250618102419-1.jpg"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KAnyang.png" class="mb-2">
                <h1 class="text-3xl mb-4">FC 안양</h1>
                <p class="text-gray-700 mb-4">
                    2013년도에 창단되었고 연고지는 경기도 안양시를 하고 있는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    2012년 10월 10일 시의회에서 안양을 연고지로 하는 프로 축구단 창단 조례안이 통과됐고 2013년 2월 2일 구단이 창단되었다. 엠블럼에 새겨져 있는 Civitano, Paradizo, Feliĉo는 FC 안양의 모토인데 에스페란토로 시민, 낙원, 행복을 의미한다.
                    <br>
                    팬덤은 주로 안양시 외에도 군포시, 과천시, 의왕시, 광명시, 시흥시 일대에 주로 형성되어 있는 편.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.fc-anyang.com/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#4F1B87] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 보라색
                    </p>
                    <p class="text-gray-600">
                        보라색 : R79 / G27 / B135
                    </p>
                    <div class="container flex h-14 bg-[#4F1B87] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">안양 종합 운동장 별칭은 아워네이션</p>
                    <img src="/Anyangstadium.webp" class="w-full h-[300px]">
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
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Anyang/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>