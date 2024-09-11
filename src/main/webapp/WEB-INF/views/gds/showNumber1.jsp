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
            height: 1200px;
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
    <div style="width: 49%; height: 1200px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">서울 정신병원 전화번호&주소</h3>



            <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 송파미소병원</p>
            <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 02-1661-9299</p>
            <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 서울특별시 송파구 오금로 513 위례빌(거여동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 국립정신건강센터</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-2204-0114</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 광진구 용마산 127(중곡동, 국립건강정신센터)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 마인드웰병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-433-1195</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울특별시 중랑구 망우로 403 삼부빌딩 5~7층 (망우동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 멘토스병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-2214-5100</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 동대문구 한천로 49 (답십리동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 서울명병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-965-2800</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 동대문구 고산자로 421 (용두동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 다나병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-942-8000</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 도봉구 해등로 129 (창동)</p>
    </div>




    <div style="width: 49%; height: 1150px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 20px; margin-top: 50px">
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 베이직병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-990-2999</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 도봉구 삼양로 610 지하1층 지상 1,2,3,4,호 (쌍문동, 산수디앤씨)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8.재단법인한국산업보건환경연구소부설 해상병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-844-6119</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 영등포구 신길로 173 (신길동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 성지병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-867-7056</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 금천구 가산로 122 (가산동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 서울특별시 은평병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-300-8114</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 은평구 백련산로 90 (응암동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 의료볍인다나 의료재단구로 다나병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-2613-8001</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 구로구 개봉로 126 구로다나병원빌딩 (개봉동)</p>
            <br>
            <hr>
            <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 강서필병원</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 02-2608-8855</p>
            <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 서울 특별시 강서구 강서로17길 24 (화곡동)</p>
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

