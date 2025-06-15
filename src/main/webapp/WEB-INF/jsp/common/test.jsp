<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배너 슬라이드</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <style>
        .swiper {
            width: 800px;
            height: 200px;
        }

        .swiper-slide {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .swiper-slide img {
            width: 265px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
        }

        .v-btn {
            background: none;
            border: none;
            padding: 0;
            cursor: pointer;
        }

        .swiper-pagination {
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="banner-link mark-ad group-ad-banner">
    <div class="swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <button class="v-btn">
          <span class="v-btn__content">
            <img src="https://image.findjob.co.kr/FJImage/Service/2025/05/28/14357PARBGOCQQFH5HWIZMKOW.png" alt="배너1">
          </span>
                </button>
            </div>
            <div class="swiper-slide">
                <button class="v-btn">
          <span class="v-btn__content">
            <img src="https://image.findjob.co.kr/FJImage/Service/2025/05/27/91324WI32BLRE1Z5QMACPH5VM.png" alt="배너2">
          </span>
                </button>
            </div>
            <div class="swiper-slide">
                <button class="v-btn">
          <span class="v-btn__content">
            <img src="https://image.findjob.co.kr/FJImage/Service/2025/02/27/15619W6UOBOX2CRBIUBJQ93ZP.png" alt="배너3">
          </span>
                </button>
            </div>
        </div>

        <!-- 페이징 -->
        <div class="swiper-pagination"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper', {
        slidesPerView: 1,
        spaceBetween: 20,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            type: 'fraction',
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
    });
</script>

<%@ include file="../common/foot.jspf" %>
