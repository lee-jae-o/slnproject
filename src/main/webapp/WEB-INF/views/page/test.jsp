<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-wvfXpqpZZVQGK8fPZmZjBbMN2AchMy6q3FwZ+Z87pS6RVZQ3VP8Uq7BzRmiTjkF8" crossorigin="anonymous">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js" integrity="sha384-4oV9pe0R+3JWKFtu8tDRL4BCyGpYRgPZHvhvzZl+ep1GiNXPzN+uV2XwxVI+eXY7" crossorigin="anonymous"></script>

    <title>우울돋보기 네비게이션</title>
    <style>

        .navbar {
            background-color: transparent;
            box-shadow: none;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
        }

        .navbar-brand {
            font-size: 35px;
            color: #002752;
            margin-left: 35px;
            margin-top: 24px;
            font-family: 함초롬바탕;
            font-weight: bold;
        }

        .current-date {
            font-size: 25px;
            color: #002752;
            font-weight: bold;
            margin-left: 70px;
            margin-right: auto;
            margin-top: 24px;
            font-family: "MS Outlook";
            border-bottom: 5px solid orange;
            display: inline-block;
        }


        .btn-primary1:hover {
            background-color: #000 !important;
            color: #fff !important;
        }

        .btn-primary:hover {
            background-color: #a52834 !important;
            color: #fff !important;
        }



        .extra-box {
            position: absolute;
            right: 0;
            top: 0;
            width: 410px;
            height: 430px;
            background-color: #002752;
            border-radius: 0 0 0 22px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-family: Arial;
            text-align: center;
            font-weight: bold;

        }

        body, html {
            margin: 0;
            padding: 0;
        }



        .icon-container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
            margin: 163px;

        }

        .clickable-icon {
            cursor: pointer;
            margin-bottom: 10px;
        }

        .icon-title {
            text-align: center; /* 텍스트를 가운데 정렬 */
            font-size: 31px;
            color: white;
            margin-top: 20px;
            width: 400px;
            height: 50px;
            font-weight: bold;
            font-family: Arial;
            margin-left: auto; /* 텍스트를 가운데로 이동 */
            margin-right: auto; /* 텍스트를 가운데로 이동 */

        }


        .clickable-icon-container {

            cursor: pointer;
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); /* 그림자 스타일 */
            transition: transform 0.3s ease-in-out; /* 부드러운 변화를 위한 트랜지션 */
        }

        .clickable-icon-container:hover {
            /* 마우스 오버 시 효과 스타일 */
            transform: scale(1.05); /* 이미지 크기를 키움 */
        }

        .footer {
            background-color: darkorange; /* 연두색 배경 */
            height: 90px; /* 높이 조절 */
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-weight: bold;
        }


        .image-container {
            position: relative;
            overflow: hidden;
        }

        .image-container img {
            width: 100%;
            height: 710px;
            margin-top: 170px;
            transition: opacity 1s ease-in-out;
        }






    </style>
</head>
<body>

<nav class="navbar navbar-light">
    <a class="navbar-brand">행복돋보기</a>
    <div class="current-date" id="current-date"></div>

    <div class="extra-box" style="font-size: 25px">
        <p style="display: inline-block; text-align: left">

            <% if (session.getAttribute("SS_USER_ID") != null) { %>
            <%=session.getAttribute("SS_USER_ID") %>님&nbsp;
               <br><div style="text-align: center">어서&nbsp;오세요!</div>
            </form>
            <% } else { %>
            저희 사이트에 오신걸<br> 환영합니다! <br><br>
            로그인 후<br>다양한 기능들을 사용해보세요.
            <% } %>
        </p>
    </div>
    </div>



</nav>






<section>

    <div class="button-container">
        <div class="btn-container">
            <p class="btn-text" style="margin-left: 290px; margin-top: 25px; font-size: 38px; font-family: 'Century Gothic'; font-weight: bold; color: #0c63e4">부정적인 생각, 스트레스, </p>
            <p class="btn-text" style="margin-left: 290px; margin-top: -30px; font-size: 38px; font-family: 'Century Gothic',sans-serif; font-weight: bold; color: #002752;">그리고 삶의 어려움을 극복하세요!</p>

            <% if (session.getAttribute("SS_USER_ID") != null) { %>
            <button type="button" class="btn btn-primary" onclick="logout()"
                    style="margin-left: 290px; width: 160px; height: 53px; border-radius: 4px; cursor: pointer; font-size: 18px; font-family: Arial; font-weight: bold; background-color: orange; border: none">로그아웃</button>
            <% } else { %>
            <button type="button" class="btn btn-primary" onclick="location.href='/user/login'"
                    style="margin-left: 290px; width: 160px; height: 53px; border-radius: 4px; cursor: pointer; font-size: 18px; font-family: Arial; font-weight: bold; background-color: orange; border: none">로그인</button>

            <button type="button" class="btn btn-primary1" onclick="location.href='/user/userReg'"
                    style="margin-left: 20px; width: 160px; height: 53px; border-radius: 4px; cursor: pointer; font-size: 18px; font-family: Arial; font-weight: bold; background-color: white">회원가입</button>
            <% } %>
        </div>
    </div>




    <div class="image-container">
        <img src="/image/황혼.jpg"  style="width: 100%; height: 760px;  margin-top: 170px">
    </div>




    <div class="icon-container">

        <div class="clickable-icon-container" onclick="location.href='/gds/gdsTest'">
            <div class="clickable-icon">
                <img src="/image/테스트.jpg" style="width: 360px; height: 300px; border-radius: 9px; margin-top: 40px">
            </div>
            <div class="icon-title" style="background-color: #002752">우울증 테스트하기</div>
        </div>

        <div class="clickable-icon-container" onclick="location.href='/notice/noticeList'">
            <div class="clickable-icon">
                <img src="/image/커뮤니티.jpg" style="width: 360px; height: 300px; border-radius: 9px; margin-top: 40px">
            </div>
            <div class="icon-title" style="background-color: tomato">커뮤니티</div>
        </div>


    </div>




    <div class="icon-container">

        <div class="clickable-icon-container" onclick="location.href='/gds/gdsTest'">
            <div class="clickable-icon">
                <img src="/image/병원찾기.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: #0f5132">병원찾기</div>
        </div>

        <div class="clickable-icon-container" onclick="location.href='/daily/dailyGoal1'">
            <div class="clickable-icon">
                <img src="/image/목표.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: #6610f2">미션하기</div>
        </div>

        <div class="clickable-icon-container" onclick="location.href='/gds/gdsTest'">
            <div class="clickable-icon">
                <img src="/image/일정관리.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: maroon">일정관리</div>
        </div>

    </div>

    <div class="icon-container">

        <div class="clickable-icon-container" onclick="location.href='/page/exercise'">
            <div class="clickable-icon">
                <img src="/image/운동.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: #343a40">운동</div>
        </div>

        <div class="clickable-icon-container" onclick="location.href='/page/food'">
            <div class="clickable-icon">
                <img src="/image/식단.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: #d39e00">식단</div>
        </div>

        <div class="clickable-icon-container" onclick="location.href='/page/sleep'">
            <div class="clickable-icon">
                <img src="/image/수면.jpg" style="margin-top: 40px; width: 360px; height: 300px; border-radius: 6px">
            </div>
            <div class="icon-title" style="background-color: #002752">수면</div>
        </div>

    </div>

    <div class="footer">
        © 2023 Designed by the 돋보기팀. All rights reserved.
    </div>




    <script>
        var currentDate = new Date();
        var formattedDate = currentDate.getFullYear() + '년 ' + (currentDate.getMonth() + 1) + '월 ' + currentDate.getDate() + '일';
        document.getElementById('current-date').textContent = formattedDate;




        var currentImageIndex = 0;
        var images = [
            "/image/황혼.jpg",
            "/image/일출.jpg",
            "/image/들판.jpeg",
            "/image/유채.jpeg",
            "/image/무지개.jpeg",

        ];


        function changeImage() {
            currentImageIndex = (currentImageIndex + 1) % images.length;
            var imageUrl = images[currentImageIndex];
            var imgElement = document.querySelector('.image-container img');


            imgElement.style.opacity = 0;
            setTimeout(function () {
                imgElement.src = imageUrl;
                imgElement.style.opacity = 1;
            }, 820);
        }

        setInterval(changeImage, 6000);




        function logout() {
            window.location.href="/page/logout"
        }






    </script>

</section>
</body>
</html>