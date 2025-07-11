<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../common/head.jspf" %>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://i.namu.wiki/i/w4e2XUi5dXtVqlkE1ujlmK8-LcKXTYd5RTeQtci02qvuQgbYmZtMsbkUIxazlMlfLbqqK-wAMsB2ahagIAapu0LhQJcahc_5Rv6FOxF9TRzJ-k7HS_klu9aonOgefkn81yWqEry7U-Sl2v0qOCillg.webp"/>
            </div>
            <div class="lg:w-5/12">
                <img src="/emblem_KDaegu.png" class="mb-2">
                <h1 class="text-3xl mb-4">대구 FC</h1>
                <p class="text-gray-700 mb-4">
                    2002년 창단 대구광역시를 연고로 하는 K리그1 소속의 프로 축구단
                </p>
                <p class="text-gray-700 mb-2">
                    2002년 월드컵의 축구 붐에 힘입어 대한민국 최초로 시도민구단의 개념을 도입하면서 창단했다.
                    역대 K리그 최초로 시민 구단으로 창단했으며 2003년부터 K리그에 참가하기 시작했다.
                    <br>
                    대구 FC의 상징인 세징야라는 K리그 역사상 가장 성공적인 외국인 선수 중 한 명인 선수가 있는 곳이다.
                </p>
                <a class="inline-block bg-[#444] text-white px-6 py-2 rounded hover:bg-[#333] transition"
                   href="https://www.daegufc.co.kr/" target="_blank">
                    구단 보러가기!
                </a>
            </div>
        </div>

        <!-- Call to Action Card -->
        <div class="bg-[#6dcef5] text-white text-center py-4 px-4 rounded mb-16">
            <p class="text-lg w-full h-auto">구단 상세</p>
        </div>

        <!-- Content Row (Cards) -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <!-- Card One -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">구단 색상</h2>
                    <p class="text-gray-600">
                        메인 컬러 하늘색
                    </p>
                    <p class="text-gray-600">
                        SKYBLUE : R109 / G206 / B245
                    </p>
                    <div class="container flex h-14 bg-[#6dcef5] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">경기장</h2>
                    <p class="text-gray-600">대구 IM 뱅크 파크 별칭은 대팍(대구은행파크 줄임말)</p>
                    <img src="https://i.namu.wiki/i/L2gbvy3QmDq5tfS3Mm39eKqioJX9pGydBO3C4HiblLDa13EZ2V9ddZ-URsTgJ1fjS5HdpFq-hSCBsuvu3JUCoz5-_p2_z2HkQWBsgTHsBD58trVI_hG6MLQVlAOy2_PXFwATyde-M6wxwN6574CLGQ.webp" class="w-full">
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">라이벌</h2>
                    <p class="text-gray-600">
                        광주 : 달빛더비
                    </p>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-[#444] text-white px-4 py-2 rounded hover:bg-[#333] transition" href="../intro/Daegu/restaurant">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../../common/footer.jspf" %>
<%@ include file="../../common/foot.jspf" %>