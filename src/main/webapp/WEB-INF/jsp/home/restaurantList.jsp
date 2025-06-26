<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/head.jspf" %>

<!-- 카카오 지도 JS -->
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${javascript_key}&libraries=services">
</script>
<div class="bg-gray-100 text-gray-900">

    <div class="flex h-screen">
        <!-- 왼쪽: 음식점 정보 (1/3) -->
        <div class="w-1/3 overflow-y-scroll p-6 bg-white">
            <h2 class="text-2xl font-bold mb-4">${teamName} 음식점 목록</h2>
            <c:forEach var="restaurant" items="${restaurants}">
                <div class="mb-6 p-4 bg-gray-100 rounded shadow">
                    <h3 class="text-lg font-semibold">${restaurant.name}</h3>
                    <p class="text-sm text-gray-600 mb-1">카테고리: ${restaurant.category}</p>
                    <p class="text-sm text-gray-600 mb-1">주소: ${restaurant.address}</p>
                    <p class="text-sm text-gray-600 mb-1">평점: ${restaurant.rating}</p>
                    <c:if test="${restaurant.detail_url ne '없음'}">
                        <a class="text-blue-600 underline text-sm" href="${restaurant.detail_url}" target="_blank">상세
                            보기</a>
                    </c:if>
                </div>
            </c:forEach>
        </div>

        <!-- 오른쪽: 지도 (2/3) -->
        <div class="w-2/3 relative">
            <div id="map" class="absolute top-0 left-0 right-0 bottom-0"></div>
        </div>
    </div>

    <script>
        // 지도 초기 설정
        var mapContainer = document.getElementById('map');
        var mapOptions = {
            center: new kakao.maps.LatLng(36.3504, 127.3845),
            level: 5
        };
        var map = new kakao.maps.Map(mapContainer, mapOptions);

        // 마커 표시
        <c:forEach var="restaurant" items="${restaurants}">
        // 주소 → 좌표 변환 (Geocoder)
        new kakao.maps.services.Geocoder().addressSearch("${restaurant.address}", function (result, status) {
            if (status === kakao.maps.services.Status.OK) {
                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });
                var infowindow = new kakao.maps.InfoWindow({
                    content: `<div style="padding:5px;font-size:13px;">${restaurant.name}</div>`
                });
                kakao.maps.event.addListener(marker, 'mouseover', function () {
                    infowindow.open(map, marker);
                });
                kakao.maps.event.addListener(marker, 'mouseout', function () {
                    infowindow.close();
                });
                map.setCenter(coords);
            }
        });
        </c:forEach>
    </script>
</div>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>