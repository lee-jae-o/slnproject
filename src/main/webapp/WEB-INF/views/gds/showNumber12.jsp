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
            height: 1830px;
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
    <div style="width: 49%; height: 1830px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">강원 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 내안에병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 033-733-1199</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 강원도 원주시 남원로 562-5 (개운동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 새마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-731-3111</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 원주시 문막읍 귀문로 1217</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인 춘천서인병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-2261-0999</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 춘천시 동산면 새술막길 315-77 315</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 베드로 병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-255-0085</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 춘천시 공지로 270 (효자동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 춘천예현병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-264-9885</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 춘천시 서면 새말길 122-11 122</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. (의)아나의료재단 강릉아나병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-610-1100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 강릉시 용지로 129-0 (옥천동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 강릉율곡병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-655-1133</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 강릉시 동해대로 3304번길 11 11</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 국립춘천병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-260-3000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 춘천시 동산명 영서로 824 824</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 봄내병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 033-255-8515</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 강원도 춘천시 춘천로 180 180</p>


    </div>




    <div style="width: 49%; height: 450px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 10px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">제주 정신병원 전화번호&주소</h3>
        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 연강의료재단 연강참병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 064-759-9641</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 제주특별자치도 제주시 서광로 175 아세아빌딩 (용담일동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 의료법인 연강의료재단 연강병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 064-726-7900</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 제주특별자치도 제주시 죽성서길 6 (오동동)</p>



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

