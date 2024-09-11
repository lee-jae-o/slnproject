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
            height: 2230px;
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
    <div style="width: 49%; height: 2230px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">전북 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 완주의료재단 한마음화산병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 063-260-1300</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 전라북도 완주군 화산면 운제로 100 (한마음화산병원)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 전라북도 마음사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-240-2100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 완주군 소양면 소양로 465-23</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 허병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-254-5599</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 전주시 덕진구 조경단로 103 (금암동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 세미한병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-548-7575</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 김제시 백구면 영상 3길 25-0</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 미래병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-540-8800</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 김제시 금구면 낙산 1길 74-1</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 희망병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-540-8855</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 김제시 금구면 낙산 1길 74-1</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 신세계병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-545-8100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 김제시 금산면 구성 5길 84-15</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 의료법인 지석의료재단 신세계효병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-545-8100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 김제시 금산면 구성 5길 84-15</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 남원성일병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-634-9989</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 남원시 사매면 춘향로 822-129</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 선병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-643-7575</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 임실군 덕치면 사곡 1길 9-8</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 의료법인 성은의료재단 참조은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 063-538-9730</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라북도 정읍시 새암길 29-11 (수성동)</p>

    </div>




    <div style="width: 49%; height: 2230px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 10px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">전남 정신병원 전화번호&주소</h3>
        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 경애의료재단 담양참사랑병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 061-381-7582</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 전라남도 담양군 대덕면 용샌로 369</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 창평우리병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-380-7000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 담양군 대덕면 차동길 2-62</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인 거명의료재단 영광기독신하병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-353-9000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 영광군 영광읍 천년로 1351-15</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 순천은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-752-8575</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 순천시 낙안면 읍성로 302</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 밝은마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-330-8000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 나주시 남평읍 세남로 1566-3</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 다정한병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-330-8000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 나주시 산포면 매성길 61</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 보은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-370-3000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 화순군 도곡면 고인돌 1로 282-14</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 의료법인 세화의료재단 나주효사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-330-1700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 나주시 금천면 영산로 5891-9 나주효사랑병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 국립나주병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-330-4108</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 나주시 산포면 세남로 1328-31</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 의료법인 휴사랑의료재단 보성제일병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-853-7700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 보성군 보성읍 송재로 59-2</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 의료법인 연희의료재단 해남혜민의료병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 061-533-8455</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 전라남도 해남군 옥천면 해남로 583-52</p>


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

