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
            height: 1800px;
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
    <div style="width: 49%; height: 1800px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">인천 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 정진의료재단 영화병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 032-442-2020</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 인천광역시 남동구 소래역로 42 소래타워 302호, 6~10층 (논현동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 예인병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-426-1800</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 남동구 논고개로 71 가산타워 7~10층 1001,1002호 (논현동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인 보람의료재단 보람병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-542-0114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 계양구 오조산로 11 (작전동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 인천바오로병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-525-7080</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 부펴욱 장제로 145 (부평동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 마음편한병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-207-7070</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 계양구 아나지로 380 해룡빌딩 1층,5층 (작전동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 다원병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-543-7530</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 계양구 장제로 857 (임학동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 의료법인 삼정의료재단 삼정병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-543-7530</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 계양구 장제로 800 (계산동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 새희망병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-431-2555</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 남동구 남동대로922번길 54 새희망병원 (간석동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 인천정병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-424-7555</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 남동구 남동대로931 3~6층 (간석동)</p>
    </div>




    <div style="width: 49%; height: 1580px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 20px; margin-top: 50px">
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 원병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-547-7110</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 미추홀구 인하로 372 지하1~2층, 1~5층 (주안동,남영빌딩)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 인천우리병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-715-5300</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 미추홀구 석바의로 53번길 8 (주안동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 은혜병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-562-5101</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 서구 심곡로 132번길 22 (심곡동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 인천참사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-571-9111</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 서구 원창로 240번길 9 (가정동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 블레스병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-563-1175</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 서구 청마로 167번안길 17 선혜프라자 2~5층 (당하동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 지성병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-862-5544</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 미추홀구 아암대로 109 (용현동,5,6,7,8층)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 의료법인 정수의료재단 예담병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-933-5222</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 강화군 내가면 해안서로 964</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 해주병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-933-7114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 인천광역시 강화군 하점면 창후로 286</p>
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

