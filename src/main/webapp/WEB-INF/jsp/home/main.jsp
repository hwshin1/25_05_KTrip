<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../common/head.jspf" %>

<div class="w-full h-auto relative overflow-hidden bg-white">
    <%@ include file="../common/slider.jspf" %>
    <div class="w-full h-[760px] relative overflow-hidden bg-[#F5F5F5]">
        <p class="flex justify-center mt-[120px] text-5xl text-center">
            어디로 갈까?
        </p>
        <p class="flex justify-center text-xl">
            갈 만한 곳 리스트 업!
        </p>
        <div class="flex justify-center mt-[70px]">
            <div class="w-[570px] h-[370px] relative mx-3">
                <!-- 이미지 -->
                <img src="/soung.jpg" class="w-full h-full object-cover" />

                <div class="absolute bottom-4 right-4 text-right text-[#e5e5e5]">
                    <p class="text-[22px] mb-1">성심당</p>
                    <p class="text-[16px] font-light mb-2">대전의 명물 빵집</p>
                    <button class="bg-[#9b2734] text-[#f5f5f5] text-[16px] font-light px-4 py-2">
                        자세히 보기
                    </button>
                </div>
            </div>
            <div class="w-[570px] h-[370px] relative mx-3">
                <!-- 이미지 -->
                <img src="/20221022_120444.jpg" class="w-full h-full object-cover" />

                <div class="absolute bottom-4 left-4 text-white">
                    <p class="text-[22px] mb-2">한빛탑</p>

                    <button class="bg-gray-300 text-black text-[16px] font-light px-4 py-2">
                        자세히 보기
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="w-full h-[600px] relative text-white bg-[url(/bennel.png)] bg-cover bg-center flex flex-col items-center justify-center text-center space-y-6">
        <p class="text-[50px] font-bold">
            재미있는 축구 직관
        </p>
        <p class="text-[22px] leading-relaxed">
            <span class="block">직관 가기 위해 놀러 간다!</span>
            <span class="block">경기 보기 전에 어디에 가있지?</span>
        </p>
        <p class="text-[22px]">
            카페, 음식점, 지역 내 가볼만한 곳
        </p>
    </div>
    <div class="w-full h-[150px] relative overflow-hidden overflow-x-auto my-3">
        <div class="text-center text-lg">
            <i class="fa-solid fa-ticket text-[#9D0A0F]"></i>
            티켓링크 바로가기
        </div>
        <div class="w-full flex justify-between">
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- FC 서울 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/65" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KSeoul.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>
                <p class="text-[12px] font-light text-black text-center">
                    FC 서울
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 전북현대모터스 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/73" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KJeonBuk.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>
                <p class="text-[12px] font-light text-black text-center">
                    전북현대모터스
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 울산 HD -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/66" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KUlsan.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>
                <p class="text-[12px] font-light text-black text-center">
                    울산 HD
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 대전하나시티즌 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/83" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KDaejeon.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    대전하나시티즌
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 대구 FC -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/84" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KDaegu.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    대구 FC
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- FC 안양 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/86" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KAnyang.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>
                <p class="text-[12px] font-light text-black text-center">
                    FC 안양
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 포항스틸러스 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/74" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KPohang.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    포항스틸러스
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 강원 FC -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07002&TeamCode=PS014" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KGangwon.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    강원 FC
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 광주 FC -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/79" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KGwangju.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    광주 FC
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 제주 SK -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.jejuskfc.com/reservation/ticketInfo" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KJeju.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    제주 SK
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 수원 FC -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07002&TeamCode=PS061" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KSuwonFc.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    수원 FC
                </p>
            </div>
            <div class="w-[105px] h-[105px] flex flex-col items-center relative float-left mx-3">
                <!-- 김천상무프로축구단 -->
                <div class="relative w-[90px] h-[90px] flex items-center justify-center">
                    <a href="https://www.ticketlink.co.kr/sports/138/80" target="_blank">
                        <div class="w-[90px] h-[90px] rounded-full bg-[#F5F5F5] flex items-center justify-center">
                            <img src="/emblem_KKimcheon.png" class="w-[50px] h-[50px] object-contain" />
                        </div>
                    </a>
                </div>

                <p class="text-[12px] font-light text-black text-center">
                    김천상무프로축구단
                </p>
            </div>
        </div>
    </div>
    <%@ include file="../common/footer.jspf" %>
</div>

<%@ include file="../common/foot.jspf" %>