<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../common/head.jspf" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"/>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;900&display=swap" rel="stylesheet">
<style>
  * {
    margin: 0;
    padding: 0;
  }
  body {
    font-family: "Montserrat", sans-serif;
  }
  :root {
    --mon: "Montserrat", sans-serif;
    --blue: #8a6bff;
    --darkblue: #0a0a36;
  }
  .container {
    max-width: 1140px;
    width: 100%;
    margin: auto;
    padding: 0 15px;
  }
  .sec-title {
    margin-bottom: 50px;
    padding-bottom: 15px;
    position: relative;
  }
  .sec-title::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100px;
    height: 3px;
    background: #000;
  }
  .sec-title h2 {
    font-size: 60px;
    font-family: "Montserrat", sans-serif;
    font-weight: 900;
    letter-spacing: 0;
    text-transform: uppercase;
    color: var(--blue);
  }
  .sec-title p {
    font-size: 18px;
    line-height: 28px;
  }
  .testimonial-area {
    background: var(--blue);
    position: relative;
    z-index: 2;
    padding: 50px 0;
  }
  .testimonial-area .owl-carousel {
    overflow: hidden;
    padding: 0 20px;
    margin: 0px -40px;
    padding-right: 40px;
  }
  .testimonial-area .owl-stage-outer {
    padding: 30px 50px;
    margin-left: -34px;
    width: calc(100% + 100px);
  }
  .single-testimonial {
    border: 7px solid #fff;
    text-align: center;
    border-radius: 45px;
    position: relative;
    z-index: 2;
  }
  .single-testimonial p {
    color: #fff;
    font-size: 15px;
    line-height: 24px;
    padding: 50px;
    padding-bottom: 30px;
    position: relative;
    z-index: 3;
  }
  .single-testimonial::before {
    content: "";
    position: absolute;
    left: -35px;
    top: -35px;
    background: no-repeat var(--blue);
    background-size: 60%;
    width: 126px;
    height: 100px;
    transform: rotate(180deg);
    background-position: 34px 15px;
  }
  .single-testimonial::after {
    content: "";
    position: absolute;
    right: -35px;
    bottom: -34px;
    background: no-repeat var(--blue);
    background-size: 60%;
    width: 126px;
    height: 100px;
    background-position: 34px 19px;
  }
  .round {
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: 1;
  }
  .round-1::before {
    content: "";
    position: absolute;
    left: 88px;
    top: -7px;
    width: 50px;
    height: 7px;
    background: #fff;
    border-radius: 30px;
  }
  .round-1::after {
    content: "";
    position: absolute;
    left: -7px;
    top: 62px;
    width: 7px;
    height: 50px;
    background: #fff;
    border-radius: 30px;
  }
  .round-2::before {
    content: "";
    position: absolute;
    right: 87px;
    bottom: -7px;
    width: 50px;
    height: 7px;
    background: #fff;
    border-radius: 30px;
    z-index: 1;
  }
  .round-2::after {
    content: "";
    position: absolute;
    right: -7px;
    bottom: 62px;
    width: 7px;
    height: 50px;
    background: #fff;
    border-radius: 30px;
    z-index: 1;
  }

  .client-info {
    position: relative;
    z-index: 3;
  }
  .client-info a {
    width: 40px;
    height: 40px;
    border-radius: 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    box-shadow: 0 0 16px rgba(0, 0, 0, 0.16);
    font-size: 22px;
  }
  .client-info {
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: left;
    padding-bottom: 50px;
  }
  .client-info h6 {
    color: #111;
    font-weight: 700;
    font-size: 18px;
    color: #fff;
  }

  .client-info h6 a {
    color: #fff;
    text-decoration: none;
  }

  .client-info span {
    display: inline-block;
    color: #fff;
    font-size: 12px;
  }
  .sec-title.white-title h2 {
    color: #fff;
  }
  .owl-dots button {
    background: #fff !important;
    width: 10px;
    height: 10px;
    border-radius: 26px;
    margin: 0 5px;
    transition: 0.3s;
  }
  .owl-dots {
    text-align: center;
    margin-top: 50px;
  }
  .owl-dots button.active {
    width: 30px;
  }
</style>
<body>
<section class="testimonial-area">
  <div class="container">
    <div class="sec-title white-title">
      <h2>후기 리스트</h2>
      <p>What Client Say About Us?</p>
    </div>
    <div class="testimonial-content owl-carousel">
      <c:forEach var="review" items="${reviews}">
        <!-- Single Testimonial -->
        <div class="single-testimonial">
          <div class="round-1 round"></div>
          <div class="round-2 round"></div>
          <p>${review.body}</p>
          <div class="client-info">
            <div class="client-details">
              <h6><a href="detail?id=${review.id }">${review.title }</a></h6>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>
<script>
  $(".testimonial-content").owlCarousel({
    loop: true,
    items: 2,
    margin: 50,
    dots: true,
    nav: false,
    mouseDrag: true,
    autoplay: false,
    autoplayTimeout: 4000,
    smartSpeed: 800
  });
</script>
</body>
</html>
