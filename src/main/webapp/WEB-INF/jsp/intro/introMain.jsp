<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<style>
    .frame {
        display: flex;
        flex-direction: column;
        max-width: 1920px;
        width: 1920px;
        align-items: flex-start;
        position: relative;
    }

    .frame .div {
        display: flex;
        flex-direction: column;
        max-width: 1920px;
        align-items: flex-start;
        position: relative;
        width: 100%;
        flex: 0 0 auto;
    }

    .frame .gmb {
        display: flex;
        align-items: flex-start;
        position: relative;
        align-self: stretch;
        width: 100%;
        flex: 0 0 auto;
    }

    .frame .div-wrapper {
        position: relative;
        flex: 1;
        flex-grow: 1;
        height: 47px;
        background-color: #ffffff;
        border-right-width: 1px;
        border-right-style: solid;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .text-wrapper {
        position: absolute;
        height: 21px;
        top: 12px;
        left: 67px;
        font-family: "Pretendard-Bold", Helvetica;
        font-weight: 700;
        color: #000000;
        font-size: 18px;
        letter-spacing: 0;
        line-height: normal;
        white-space: nowrap;
    }

    .frame .div-2 {
        display: flex;
        align-items: center;
        position: relative;
        flex: 1;
        flex-grow: 1;
    }

    .frame .div-3 {
        position: relative;
        flex: 1;
        flex-grow: 1;
        height: 48px;
        background-color: #ffffff;
        border-right-width: 1px;
        border-right-style: solid;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .div-4 {
        position: relative;
        flex: 1;
        flex-grow: 1;
        height: 48px;
        background-color: #ffffff;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .div-5 {
        display: flex;
        height: 750px;
        align-items: center;
        justify-content: space-between;
        position: relative;
        align-self: stretch;
        width: 100%;
    }

    .frame .frame-wrapper {
        position: relative;
        flex: 1;
        align-self: stretch;
        flex-grow: 1;
        background-color: #c0c0c0;
        border-right-width: 1px;
        border-right-style: solid;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .div-6 {
        display: flex;
        flex-direction: column;
        width: 223px;
        align-items: flex-start;
        gap: 32px;
        position: relative;
        top: 522px;
        left: 50px;
    }

    .frame .div-7 {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
        position: relative;
        align-self: stretch;
        width: 100%;
        flex: 0 0 auto;
    }

    .frame .text-wrapper-2 {
        position: relative;
        align-self: stretch;
        margin-top: -1.00px;
        font-family: "Pretendard-Bold", Helvetica;
        font-weight: 700;
        color: #ffffff;
        font-size: 32px;
        letter-spacing: -0.80px;
        line-height: 44.8px;
    }

    .frame .text-wrapper-3 {
        position: relative;
        align-self: stretch;
        font-family: "Pretendard-Regular", Helvetica;
        font-weight: 400;
        color: #ffffff;
        font-size: 15px;
        letter-spacing: -0.38px;
        line-height: 21.0px;
    }

    .frame .out-of-stoke-wrapper {
        display: inline-flex;
        align-items: flex-start;
        gap: 10px;
        padding: 14px 16px;
        position: relative;
        flex: 0 0 auto;
        background-color: #ffffff80;
        border: 1px solid;
        border-color: #ffffff33;
        backdrop-filter: blur(5px) brightness(100%);
        -webkit-backdrop-filter: blur(5px) brightness(100%);
    }

    .frame .out-of-stoke {
        position: relative;
        width: fit-content;
        margin-top: -1.00px;
        font-family: "Pretendard-Regular", Helvetica;
        font-weight: 400;
        color: #111111;
        font-size: 14px;
        letter-spacing: -0.35px;
        line-height: 19.6px;
        white-space: nowrap;
    }

    .frame .frame-wrapper-2 {
        position: relative;
        flex: 1;
        align-self: stretch;
        flex-grow: 1;
        background-color: #c0c0c0;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .div-8 {
        position: relative;
        align-self: stretch;
        width: 100%;
        height: 100px;
        border-bottom-width: 1px;
        border-bottom-style: solid;
        border-color: #111111;
    }

    .frame .text-wrapper-4 {
        position: absolute;
        height: 28px;
        top: 35px;
        left: 50px;
        font-family: "NEXON Lv1 Gothic-Regular", Helvetica;
        font-weight: 400;
        color: #111111;
        font-size: 20px;
        letter-spacing: -0.50px;
        line-height: 28.0px;
        white-space: nowrap;
    }

    .frame .div-9 {
        display: inline-flex;
        align-items: center;
        justify-content: flex-end;
        gap: 24px;
        position: absolute;
        top: 37px;
        left: 649px;
    }

    .frame .div-10 {
        display: inline-flex;
        flex-direction: column;
        align-items: flex-start;
        position: relative;
        flex: 0 0 auto;
    }

    .frame .text-wrapper-5 {
        position: relative;
        align-self: stretch;
        margin-top: -1.00px;
        font-family: "Pretendard-SemiBold", Helvetica;
        font-weight: 600;
        color: #000000;
        font-size: 18px;
        letter-spacing: -0.45px;
        line-height: 25.2px;
    }

    .frame .rectangle {
        position: relative;
        align-self: stretch;
        width: 100%;
        height: 2px;
        background-color: #000000;
    }

    .frame .div-wrapper-2 {
        display: inline-flex;
        flex-direction: column;
        height: 25px;
        align-items: flex-start;
        position: relative;
        flex: 0 0 auto;
    }

    .frame .text-wrapper-6 {
        position: relative;
        align-self: stretch;
        margin-top: -1.00px;
        font-family: "Pretendard-SemiBold", Helvetica;
        font-weight: 600;
        color: #999999;
        font-size: 18px;
        letter-spacing: -0.45px;
        line-height: 25.2px;
    }
</style>

<header>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="style.css" />
</header>

<div class="frame">
    <div class="div">
        <div class="gmb">
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-wrapper"><div class="text-wrapper">LOGO NAME</div></div>
            <div class="div-2">
                <div class="div-3"></div>
                <div class="div-3"></div>
                <div class="div-4"></div>
            </div>
        </div>
        <div class="div-5">
            <div class="frame-wrapper">
                <div class="div-6">
                    <div class="div-7">
                        <div class="text-wrapper-2">Power Metal</div>
                        <div class="text-wrapper-3">Power Metal dfsdfsdfsdfasdfa ffffff</div>
                    </div>
                    <div class="out-of-stoke-wrapper"><div class="out-of-stoke">OUT OF STOKE</div></div>
                </div>
            </div>
            <div class="frame-wrapper-2">
                <div class="div-6">
                    <div class="div-7">
                        <div class="text-wrapper-2">Power Metal</div>
                        <div class="text-wrapper-3">Power Metal dfsdfsdfsdfasdfa ffffff</div>
                    </div>
                    <div class="out-of-stoke-wrapper"><div class="out-of-stoke">OUT OF STOKE</div></div>
                </div>
            </div>
        </div>
    </div>
    <div class="div-8">
        <div class="text-wrapper-4">K리그 팀</div>
        <div class="div-9">
            <div class="div-10">
                <div class="text-wrapper-5">ALL</div>
                <div class="rectangle"></div>
            </div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">대전하나시티즌</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">FC 서울</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">수원 FC</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">울산 HD</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">전북현대모터스</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">FC 안양</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">대구 FC</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">김천상무프로축구단</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">제주 SK</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">포항스틸러스</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">강원 FC</div></div>
            <div class="div-wrapper-2"><div class="text-wrapper-6">광주 FC</div></div>
        </div>
    </div>
</div>

<%@ include file="../common/footer.jspf" %>
<%@ include file="../common/foot.jspf" %>