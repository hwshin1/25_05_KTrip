<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <title>카테고리별 장소 검색하기</title>
    <style>
        .map_wrap, .map_wrap * {
            margin: 0;
            padding: 0;
            font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
            font-size: 12px;
        }

        .map_wrap {
            position: relative;
            width: 100%;
            height: 350px;
        }

        #category {
            position: absolute;
            top: 10px;
            left: 10px;
            border-radius: 5px;
            border: 1px solid #909090;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
            background: #fff;
            overflow: hidden;
            z-index: 2;
        }

        #category li {
            float: left;
            list-style: none;
            width: 50px;
            border-right: 1px solid #acacac;
            padding: 6px 0;
            text-align: center;
            cursor: pointer;
        }

        #category li.on {
            background: #eee;
        }

        #category li:hover {
            background: #ffe6e6;
            border-left: 1px solid #acacac;
            margin-left: -1px;
        }

        #category li:last-child {
            margin-right: 0;
            border-right: 0;
        }

        #category li span {
            display: block;
            margin: 0 auto 3px;
            width: 27px;
            height: 28px;
        }

        #category li .category_bg {
            background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;
        }

        #category li .bank {
            background-position: -10px 0;
        }

        #category li .mart {
            background-position: -10px -36px;
        }

        #category li .pharmacy {
            background-position: -10px -72px;
        }

        #category li .oil {
            background-position: -10px -108px;
        }

        #category li .cafe {
            background-position: -10px -144px;
        }

        #category li .store {
            background-position: -10px -180px;
        }

        #category li.on .category_bg {
            background-position-x: -46px;
        }

        .placeinfo_wrap {
            position: absolute;
            bottom: 28px;
            left: -150px;
            width: 300px;
        }

        .placeinfo {
            position: relative;
            width: 100%;
            border-radius: 6px;
            border: 1px solid #ccc;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
            background: #fff;
        }

        .placeinfo:nth-of-type(n) {
            border: 0;
            box-shadow: 0px 1px 2px #888;
        }

        .placeinfo_wrap .after {
            content: '';
            position: relative;
            margin-left: -12px;
            left: 50%;
            width: 22px;
            height: 12px;
            background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
        }

        .placeinfo a, .placeinfo a:hover, .placeinfo a:active {
            color: #fff;
            text-decoration: none;
        }

        .placeinfo a, .placeinfo span {
            display: block;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }

        .placeinfo span {
            margin: 5px 5px 0 5px;
            cursor: default;
            font-size: 13px;
        }

        .placeinfo .title {
            font-weight: bold;
            font-size: 14px;
            border-radius: 6px 6px 0 0;
            margin: -1px -1px 0 -1px;
            padding: 10px;
            color: #fff;
            background: #d95050;
            background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;
        }

        .placeinfo .tel {
            color: #0f7833;
        }

        .placeinfo .jibun {
            color: #999;
            font-size: 11px;
            margin-top: 0;
        }
    </style>
</head>
<body>
<div class="map_wrap">
    <div id="map" style="width:100%; height:100%;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0">
            <span class="category_bg bank"></span>은행
        </li>
        <li id="MT1" data-order="1">
            <span class="category_bg mart"></span>마트
        </li>
        <li id="AT4" data-order="2">
            <span class="category_bg play"></span>관광 명소
        </li>
        <li id="FD6" data-order="3">
            <span class="category_bg restaurant"></span>음식점
        </li>
        <li id="CE7" data-order="4">
            <span class="category_bg cafe"></span>카페
        </li>
        <li id="CS2" data-order="5">
            <span class="category_bg store"></span>편의점
        </li>
    </ul>
</div>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${javascript_key}&libraries=services"></script>
<script>
    (() => {
        const mapContainer = document.getElementById('map');
        const mapOptions = {
            center: new kakao.maps.LatLng(36.365265, 127.325076),
            level: 4
        };
        const map = new kakao.maps.Map(mapContainer, mapOptions);
        const placesService = new kakao.maps.services.Places(map);

        let currentCategory = '';
        let markers = [];

        // 커스텀 오버레이 생성
        const placeOverlay = new kakao.maps.CustomOverlay({zIndex: 1});
        const contentNode = document.createElement('div');
        contentNode.className = 'placeinfo_wrap';
        placeOverlay.setContent(contentNode);

        // 지도에 이벤트 전달 방지용 핸들러 등록
        ['mousedown', 'touchstart'].forEach(evt =>
            contentNode.addEventListener(evt, kakao.maps.event.preventMap)
        );

        // 마커 생성 함수
        const createMarker = (position, order) => {
            const imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png';
            const imageSize = new kakao.maps.Size(27, 28);
            const imgOptions = {
                spriteSize: new kakao.maps.Size(72, 208),
                spriteOrigin: new kakao.maps.Point(46, order * 36),
                offset: new kakao.maps.Point(11, 28)
            };
            const markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions);
            const marker = new kakao.maps.Marker({position, image: markerImage});
            marker.setMap(map);
            markers.push(marker);
            return marker;
        };

        // 마커 모두 제거
        const clearMarkers = () => {
            markers.forEach(marker => marker.setMap(null));
            markers = [];
        };

        // 장소 상세정보 표시
        const showPlaceInfo = place => {
            let content = `
      <div class="placeinfo">
        <a class="title" href="${place.place_url}" target="_blank" title="${place.place_name}">
          ${place.place_name}
        </a>`;
            if (place.road_address_name) {
                content += `
        <span title="${place.road_address_name}">${place.road_address_name}</span>
        <span class="jibun" title="${place.address_name}">(지번 : ${place.address_name})</span>`;
            } else {
                content += `<span title="${place.address_name}">${place.address_name}</span>`;
            }
            content += `<span class="tel">${place.phone || '정보없음'}</span></div><div class="after"></div>`;

            contentNode.innerHTML = content;
            placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
            placeOverlay.setMap(map);
        };

        // 장소 검색 결과 표시
        const displayPlaces = places => {
            clearMarkers();
            const order = document.getElementById(currentCategory).getAttribute('data-order');
            places.forEach(place => {
                const marker = createMarker(new kakao.maps.LatLng(place.y, place.x), order);
                kakao.maps.event.addListener(marker, 'click', () => showPlaceInfo(place));
            });
        };

        // 장소 검색 콜백
        const placesSearchCallback = (data, status) => {
            if (status === kakao.maps.services.Status.OK) {
                displayPlaces(data);
            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                clearMarkers();
                placeOverlay.setMap(null);
                alert('검색 결과가 없습니다.');
            } else if (status === kakao.maps.services.Status.ERROR) {
                alert('검색 중 오류가 발생했습니다.');
            }
        };

        // 현재 카테고리로 장소 검색
        const searchPlaces = () => {
            if (!currentCategory) return;
            placeOverlay.setMap(null);
            clearMarkers();
            placesService.categorySearch(currentCategory, placesSearchCallback, {useMapBounds: true});
        };

        // 카테고리 클래스 변경
        const updateCategoryClass = selectedEl => {
            const categories = document.getElementById('category').children;
            [...categories].forEach(el => (el.className = ''));
            if (selectedEl) selectedEl.className = 'on';
        };

        // 카테고리 클릭 핸들러
        const onCategoryClick = e => {
            const target = e.currentTarget;
            if (target.classList.contains('on')) {
                currentCategory = '';
                updateCategoryClass(null);
                clearMarkers();
                placeOverlay.setMap(null);
            } else {
                currentCategory = target.id;
                updateCategoryClass(target);
                searchPlaces();
            }
        };

        // 초기 카테고리 클릭 이벤트 등록
        const initCategoryEvent = () => {
            const categories = document.getElementById('category').children;
            [...categories].forEach(el => el.addEventListener('click', onCategoryClick));
        };

        // 지도 idle 이벤트 등록 (지도 움직일 때 재검색)
        kakao.maps.event.addListener(map, 'idle', () => {
            if (currentCategory) searchPlaces();
        });

        // 초기화
        initCategoryEvent();
    })();
</script>
</body>
</html>