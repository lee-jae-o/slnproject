<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gds Result</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        #top-navbar {
            background-color: #23272b;
            overflow: hidden;
            padding: 20px;
            text-align: left;
            color: white;
        }

        #navbar {
            height: 1630px;
            width: 200px;
            background-color: #23272b;
            overflow-x: hidden;
            padding-top: 20px;
            margin-top: 0px;
            position: absolute;
        }

        #navbar a {
            padding: 8px 8px 8px 16px;
            text-decoration: none;
            font-size: 18px;
            color:white;
            display: block;
        }

        #navbar a:hover {
            color: #f1f1f1;
        }

        #regionDropdown {
            margin-top: 15px;
            display: none;
            position: absolute;
            background-color: #23272b;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        #regionDropdown a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        #regionDropdown a:hover {
            background-color: #f1f1f1;
            color: black;
        }
    </style>
</head>
<body>

<div id="top-navbar" style="display: flex; justify-content: space-between; align-items: center; padding: 20px;">
    <a style="font-size: 35px; color: white;">Information</a>
    <div>
        <a href="/gds/gdsTest" style="margin-left: 20px; color: white; text-decoration: none; font-size: 21px; margin-right: 18px">다시하기</a>
        <a href="/page/test" style="color: white; text-decoration: none; font-size: 21px">메인화면</a>
    </div>
</div>

<div id="navbar">
    <a href="#" onclick="showMyInfo()" style="margin-top: 0px">내 정보</a>
    <a href="#" onclick="showChange()" style="margin-top: 15px">항목별 우울증 비율</a>
    <a href="#" onclick="showNumber()" style="margin-top: 15px">병원 정보</a>

    <div id="regionDropdown">

        <a href="#" onclick="selectRegion('서울')">서울</a>
        <a href="#" onclick="selectRegion('인천')">인천</a>
        <a href="#" onclick="selectRegion('경기')">경기</a>
        <a href="#" onclick="selectRegion('부산')">부산</a>
        <a href="#" onclick="selectRegion('대구')">대구</a>
        <a href="#" onclick="selectRegion('울산')">울산</a>
        <a href="#" onclick="selectRegion('광주')">광주</a>
        <a href="#" onclick="selectRegion('대전/세종')">대전/세종</a>
        <a href="#" onclick="selectRegion('경북/경남')">경북/경남</a>
        <a href="#" onclick="selectRegion('충북/충남')">충북/충남</a>
        <a href="#" onclick="selectRegion('전북/전남')">전북/전남</a>
        <a href="#" onclick="selectRegion('강원/제주')">강원/제주</a>

    </div>
</div>






<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 1630px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">대구 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 성동병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 053-325-0009</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 대구광역시 북구 칠곡중앙대로99길 21 (관음동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. M병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-359-3771</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 북구 팔달로 147 (노원동3가)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 제이 미주병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-592-7119</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달성군 다사읍 달구벌대로 893  대실요양병원 장례식장</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 곽호순병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-572-7770</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 서구 통학로 31 (내장동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 베스트병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-657-2000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달서구 달구벌대로 1690 5,6,7,8,9층 (두류동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 위드병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-522-1275</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달서구 명덕로 23층 2층 (두류동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 서대구대동병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-662-1000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달서구 달구벌대로 1577 (죽전동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 대동병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-663-1000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 동구 화랑로 169 (효목동)</p>
    </div>




    <div style="width: 49%; height: 1580px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 20px; margin-top: 50px">
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 미주병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-629-8119</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달서구 당산로 138 (성당동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 열경의료재단동부허병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-749-0000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 동구 화랑로 81 동부허병원 (효목동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 서안병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-656-8381</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달서구 구마로 258 3~6층 (송현동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 온빛병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-267-8000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 동구 반야월북로2길 16-1 (율암동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 수성중동병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-766-8700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 수성구 수성로 268 1층 102호, 2~8층 (중동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 대구정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-780-3000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 달성군 화원읍 명천로 58 대구광역시 시립희망원, 대구정신병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 의료법인 한성재단 동아메디병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-780-3000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 수성구 지산로 77 (지산동, (지상1~6층))</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 의료법인 배성의료재단 배성병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-383-2700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 대구광역시 북구 검단로 140-140 (검단동)</p>
    </div>





</div>




<script>

    function showMyInfo() {
        window.location.href = "/gds/gdsResult";
    }

    function showChange() {
        window.location.href = "/gds/showChange";
    }

    function showNumber() {
        document.getElementById("regionDropdown").style.display = "block";
    }

    function selectRegion(region) {

        if (region === '서울') {
            window.location.href = "/gds/showNumber1";
        } else if (region === '인천') {
            window.location.href = "/gds/showNumber2";
        } else if (region === '경기') {
            window.location.href = "/gds/showNumber3";
        } else if (region === '부산') {
            window.location.href = "/gds/showNumber4";
        } else if (region === '대구') {
            window.location.href = "/gds/showNumber5";
        } else if (region === '울산') {
            window.location.href = "/gds/showNumber6";
        } else if (region === '광주') {
            window.location.href = "/gds/showNumber7";
        } else if (region === '대전/세종') {
            window.location.href = "/gds/showNumber8";
        } else if (region === '경북/경남') {
            window.location.href = "/gds/showNumber9";
        } else if (region === '충북/충남') {
            window.location.href = "/gds/showNumber10";
        } else if (region === '전북/전남') {
            window.location.href = "/gds/showNumber11";
        } else if (region === '강원/제주') {
            window.location.href = "/gds/showNumber12";
        }

    }


</script>

</body>
</html>

