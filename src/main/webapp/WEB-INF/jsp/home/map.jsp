<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>지도</title>
</head>
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<body>
<div id="map" style="width:100%; height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${javascript_key}"></script>
<script>
    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(36.365144, 127.325116),
        level: 3
    };

    var map = new kakao.maps.Map(container, options);
</script>
</body>
</html>
