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
            height: 4830px;
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
    <div style="width: 49%; height: 4820px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">경북 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 태훈의료재단 새희망병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 054-639-8800</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 경상북도 영주시 반지미로 275-17 새희망병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 영주삼봉병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-634-7600</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 영주시 꽃동산로 43 (가흥동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인 성심의료재단 늘푸른병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-555-8275</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 상주시 함창읍 경서로 8-8</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 상주제일병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-530-9000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 상주시 내서면 영남제일로 3659</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 성심병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-843-7877</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 안동시 정백이골길 36-15 (안막동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 의료법인 안동의료재단 용상안동병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-820-1111</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 안동시 전거리길 57 (용상동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 의료법인 송인의료재단 대성그린병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-821-7282</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 안동시 임하면 고곡길 236</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 신애정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-420-7100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 김천시 어모면 신애길 89</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 의료법인 해안의료재단 해안1병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-834-6660</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 의성군 의성읍 경북대로 5732</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 청송진보병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-874-7717</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 청송군 진보면 경동로 4003</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 의료법인 영은의료재단 김천신경정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-442-0046</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 김천시 아홉사리길 140-49 (응명동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 미래로병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-442-0046</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 구미시 여헌로 30-0 (인의동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 성주제일병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-933-0712</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 성주군 성주읍 성주순환로 274</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 의료법인 유민의료재단 산울림병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-976-2580</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 칠곡군 왜관읍 금남3길 99-1</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 의료법인 고산의료재단 칠곡시몬병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-976-0401</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 칠곡군 왜관읍 금남5길 62 (왜관읍)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 의료법인 동승의료재단 동승병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-330-7700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 영천시 동강포길 87 (도남동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 의료법인 벽삼의료재단 우리세명정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 053-819-9500</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 경산시 화랑로 8길 26 (갑제동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">18. 의료법인 고담의료재단 마야병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-336-3311</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 영천시 북안면 내서로 55-25</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">19. 안강중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-763-8000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 경주시 안강읍 안강중앙로 150-3</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">20. 의료법인 안흥의료재단 영남병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-727-7780</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 포항시 북구 장량로 36 (장성동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">21. 인성병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-230-7700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 포항시 북구 장량로 98-10 (장성동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">22. 포항인성병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-245-7000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 포항시 북구 새천년대로 560-0 (죽도동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">23. 의료법인 성산의료재단 새빛병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-741-2300</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 경주시 원효로 93-1 (노동동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">24. 의료법인 영은의료재단 하나병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 054-741-2300</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상북도 청도군 청도읍 청도신기길 78-10</p>
    </div>




<div style="width: 49%; height: 4820px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 10px;">
    <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">경남 정신병원 전화번호&주소</h3>
    <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 대종의료재단 부곡온천병원</p>
    <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 055-536-4858</p>
    <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 경상남도 창녕군 부곡면 원앙로 72</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 밀양우리병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-355-8100</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 밀양시 중앙로 114 (가곡동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 국립부곡병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-536-6440</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 창녕군 부곡면 부곡로 145</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 우리병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-589-9800</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 함안군 칠서면 삼칠로 1213</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 의령사랑병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-600-2000</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 의령군 의령읍 의합대로 105-8 105</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 노아병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-912-0000</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 양산시 상북면 수서로 349-17</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 형주병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-375-7575</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 양산시 상북면 양산대로 1870-64 1870</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 의료법인 청아의료재단 동서병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-230-1800</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 창원시 마산회원구 내서읍 호원로 265 (동서병원)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 양산병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-389-1234</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 양산시 모래들1길 91 (주진동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 아람병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-364-0078</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 양산시 덕계2길 11-15 (덕계동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. (의)동남 의료재단 동남병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-331-0454</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 김해시 가야로 51번길 42 (삼계동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 덕계성심병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-365-7575</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 양산시 월라2길 45 덕계성심병원 (덕계동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 의료법인 진주의료재단 진주성남병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-759-9500</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 진주시 문산읍 문산로 831</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 의료법인 진주의료재단 새진주정신병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-761-7582</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 진주시 문산읍 제곡길 98번길 36 지하1,1~4층</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 의료법인 진주릐요재단 진주정신병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-761-7582</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 진주시 문산읍 제곡길 98번길 49-6</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 의료법인 예경의료재단 예경병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-249-5555</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 창원시 마산합포구 중앙서 1길 25 (대성동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 의료법인 한길사랑의료재단 현대사랑병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-240-8002</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 창원시 마산합포구 진북면 동삼길 314-25</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">18. 한사랑병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-722-7000</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 김해시 강동로 65 (강동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">19. 의료법인 경산의료재단 해광병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-311-1678</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 김해시 김해대로 2492번길 54-28 (삼정동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">20. 의료법인 순영의료재단 순영병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-854-6000</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 사천시 축동면 서삼로 1110-35</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">21. 사천동희병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-852-2250</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 사천시 사천읍 구암두문로 74</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">22. 장유누가병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-330-4000</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 김해시 대청로 104번길 80-1 (대청동)</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">23. 고성성심병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-673-8511</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 고성군 회화면 남해안대로 3963-21</p>
    <br>
    <hr>
    <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">24. 동양의료재단 연세사랑병원</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 055-540-7700</p>
    <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경상남도 창원시 진해구 행암로 76 (장천동)</p>
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

