<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>
<style>
    .map_wrap, .map_wrap * {
        margin: 0;
        padding: 0;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        font-size: 12px;
    }

    .map_wrap a, .map_wrap a:hover, .map_wrap a:active {
        color: #000;
        text-decoration: none;
    }

    .map_wrap {
        position: relative;
        width: 100%;
        height: 500px;
    }

    #menu_wrap {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 250px;
        margin: 10px 0 30px 10px;
        padding: 5px;
        overflow-y: auto;
        background: rgba(255, 255, 255, 0.7);
        z-index: 1;
        font-size: 12px;
        border-radius: 10px;
    }

    .bg_white {
        background: #fff;
    }

    #menu_wrap hr {
        display: block;
        height: 1px;
        border: 0;
        border-top: 2px solid #5F5F5F;
        margin: 3px 0;
    }

    #menu_wrap .option {
        text-align: center;
    }

    #menu_wrap .option p {
        margin: 10px 0;
    }

    #menu_wrap .option button {
        margin-left: 5px;
    }

    #placesList li {
        list-style: none;
    }

    #placesList .item {
        position: relative;
        border-bottom: 1px solid #888;
        overflow: hidden;
        cursor: pointer;
        min-height: 65px;
    }

    #placesList .item span {
        display: block;
        margin-top: 4px;
    }

    #placesList .item h5, #placesList .item .info {
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
    }

    #placesList .item .info {
        padding: 10px 0 10px 55px;
    }

    #placesList .info .gray {
        color: #8a8a8a;
    }

    #placesList .info .jibun {
        padding-left: 26px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
    }

    #placesList .info .tel {
        color: #009900;
    }

    #placesList .item .markerbg {
        float: left;
        position: absolute;
        width: 36px;
        height: 37px;
        margin: 10px 0 0 10px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
    }

    #placesList .item .marker_1 {
        background-position: 0 -10px;
    }

    #placesList .item .marker_2 {
        background-position: 0 -56px;
    }

    #placesList .item .marker_3 {
        background-position: 0 -102px
    }

    #placesList .item .marker_4 {
        background-position: 0 -148px;
    }

    #placesList .item .marker_5 {
        background-position: 0 -194px;
    }

    #placesList .item .marker_6 {
        background-position: 0 -240px;
    }

    #placesList .item .marker_7 {
        background-position: 0 -286px;
    }

    #placesList .item .marker_8 {
        background-position: 0 -332px;
    }

    #placesList .item .marker_9 {
        background-position: 0 -378px;
    }

    #placesList .item .marker_10 {
        background-position: 0 -423px;
    }

    #placesList .item .marker_11 {
        background-position: 0 -470px;
    }

    #placesList .item .marker_12 {
        background-position: 0 -516px;
    }

    #placesList .item .marker_13 {
        background-position: 0 -562px;
    }

    #placesList .item .marker_14 {
        background-position: 0 -608px;
    }

    #placesList .item .marker_15 {
        background-position: 0 -654px;
    }

    #pagination {
        margin: 10px auto;
        text-align: center;
    }

    #pagination a {
        display: inline-block;
        margin-right: 10px;
    }

    #pagination .on {
        font-weight: bold;
        cursor: default;
        color: #777;
    }
</style>

<section class="py-10 bg-[#e5e5e5]">
    <div class="container mx-auto px-4">
        <!-- Heading Row -->
        <div class="flex flex-col lg:flex-row items-center mb-16 space-y-6 lg:space-y-0 lg:space-x-8">
            <div class="lg:w-7/12">
                <img class="rounded w-full h-auto" src="https://i.namu.wiki/i/n8KUrQKEqHntwq72v9YhcR6LHpFeyoKPoB08cjjMJ0or6M-aFa_-vHAtyq0V-OroNPuxNKORuFf8EHoT9sgo3tBKusOezOY2mBgn4G5RSizLffIl8g3KdLQlfsR7nj64BXVWzmzGgqoUZXM7QL8McA.webp"/>
            </div>
            <div class="lg:w-5/12">
                <h1 class="text-3xl font-light mb-4">대전하나시티즌</h1>
                <p class="text-gray-700 mb-4">
                    1997년에 창단된 대전광역시를 연고로 하는 K리그1 소속의 프로 축구단!
                </p>
                <p class="text-gray-700 mb-2">
                    1997년 대전/충남 연고 기업인 계룡건설, 동아건설, 동양백화점, 충청은행의 컨소시엄 형태의 기업구단으로 창단. 하지만 1998년 IMF 구제금융 위기로 컨소시엄을 구성했던 기업들 중 동아건설, 동양백화점, 충청은행이 파산하고 2006년 구단 운영의 재정적 한계로 인해 계룡건설이 구단을 대전광역시에 매각하면서 시민구단으로 전환되었다. 2020년 하나금융그룹이 대전광역시로부터 구단을 인수하면서 다시 기업구단으로 전환되었다.
                </p>
                <a class="inline-block bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700 transition"
                   href="https://www.dhcfc.kr/">Call to Action!</a>
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
                        자주색 : C45 M96 Y70 K7 / R142 G37 B63<br>
                        하나그린 : C100 M32 Y65 K0 / R0 G122 B108
                    </p>
                    <div class="container flex h-14 bg-linear-65 from-[#007A6C] to-[#8E253F] rounded">
                    </div>
                </div>
                <div class="bg-gray-100 px-8 py-6 text-right"></div>
            </div>

            <!-- Card Two -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">Card Two</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex
                        natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore
                        voluptates quos eligendi labore.</p>
                </div>
                <div class="bg-gray-100 px-6 py-4 text-right">
                    <a class="text-sm bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition" href="#!">More
                        Info</a>
                </div>
            </div>

            <!-- Card Three -->
            <div class="bg-white shadow rounded flex flex-col h-full">
                <div class="p-6 flex-1">
                    <h2 class="text-xl font-semibold mb-3">Card Three</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex
                        numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                </div>
                <div class="bg-gray-100 px-6 py-4 text-right">
                    <a class="text-sm bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition" href="#!">More
                        Info</a>
                </div>
            </div>
        </div>

        <div class="bg-gray-100 px-6 py-4 text-center">
            <a class="text-sm bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 transition" href="../intro/Daejeon/restaurant" class="text-black">지도 보기</a>
        </div>
    </div>
</section>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>