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
            height: 5250px;
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
    <div style="width: 49%; height: 5250px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">경기 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 여주세민병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 031-883-7585</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 경기도 여주시 가남읍 경충대로 924</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 여주순영병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-883-75850</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 여주시 가남읍 경충대로 924</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인예닮 의료재단이천 소망병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-637-7400</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 이천시 호법면 중보대로 797-26 (호법면)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 동안성병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-673-3800</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 안성시 일죽면 금일로 1-38</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 서울특별시 백암정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-332-3194</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 용인시 처인구 백암면 용천로 71번길 30</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 청평우리병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-585-51150</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 가평군 청평면 경춘로 791-11</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 새로운경기도립 정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-300-6200</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 용인시 기흥구 중부대로 940 새로운경기도립 정신병원 (상하동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 용인정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-288-0114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 용인시 기흥구 중부대로 940 (상하동,용인정신병원)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 온세병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-594-7912</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 남양주시 평내로 29번길 49 10층 (평내동, M2프라자)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 실버힐스병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-511-9494</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 남양주시 경춘로 1260 하나프라자 2,3,5층 207,208,307,308,5층호 (평내동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 서울특별시 축령정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-592-6661</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 남양주시 수동면 외방로 172번길 58</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 축령복음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-592-6661</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 남양주시 수동면 외방로 172번길 58</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 성남사랑의병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-756-3024</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 성남시 수정구 성남대로 1270-1 성남대로 1262, 11-12층 (태평동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 우리마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-554-0070</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 구리시 안골로 57번길 33 (수택동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 메타메디병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-8003-5800</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 화성시 동탄원천로 338-7 동탄V프라자 3~7층 (능동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 오산신경정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-373-1254</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 오산시 가장산업동로 69-27 가,나,다동 (궐동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 새샘병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-307-7997</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 화성시 떡전골로 112-13</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">18. 하나병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-8005-9111</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 수원시 팔달구 행궁로 102 (교동, 교동대한빌딩 1~8층, 지하1,2층)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">19. 아주다남병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-269-7578</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 수원시 장안구 정자천로 187 (정자동, 롯데프라자 4층)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">20. 아주편한병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-269-5665</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 수원시 장안구 경수대로 1111 (파장동, 경기도건축사회관)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">21. 인화병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-514-9988</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 포천시 소흘읍 광른수목원로 745</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">22. 다사랑중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-340-5000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의왕시 등칙골1길 22 (오전동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">23. 의료법인 사랑나무의료재단 서수원병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-278-7115</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 수원시 권선구 오목천로 152번길 68 골든프라자3,5층 (고색동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">24. 평촌중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-387-0114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 안양시 동안구 평촌대로 223번길 49 아트타워빌딩 3,4층 (호계동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">25.의료법인 희망나눔의료재단 휴성심병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-477-9697</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 군포시 당정역로4번길 11 유영타운 B01,105,301,401~405,501~505호 (당정동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">26. 의정부힐링스병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-853-9222</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의정부시 청사로 48번길 19 4층이부, 9~12층 (금오동)</p>

    </div>




    <div style="width: 49%; height: 4850px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 20px; margin-top: 50px">
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">27. 한서중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-875-7878</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의정부시 평화로 447 (의정부동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">28. 의료법인 승민의료재단 화성초록병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-352-0885</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 화성시 양감면 사격장길 133-25</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">29. 청우병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-840-6500</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의정부시 평화로 647 미건메디컬프라자 B02,202,401,501호 (의정부동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">30. 연세하늘병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-836-7341</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의정부시 평화로 704 (가능동, 대원빌딩)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">31. 동원병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-870-0701</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 동두천시 탑신로 522</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">32.연세서울병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-415-1010</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 안산시 상록구 선암로 40 (본오동, 드들요양병원)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">33. 송추정신병원(성림재단)</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-826-1300</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 양주시 장흥면 가마골로 258번길 122-122 122</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">34. 안산연세병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-415-7515</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 안산시 상록구 광덕1로 386 303,401~406,408,501,603~605,7층호 (이동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">35. 성은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-484-6500</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 안산시 단원구 원폭ㅇ원1로 19 원포빌딩 121,122,401,501호 (초지동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">36. 라엘마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-978-5454</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 고양시 덕양구 중앙로 628 예일프라자 2층(202호제외), 6층(607,608), 7층호 (화정동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">37. 부천한병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-668-1119</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 부천시 부천로 170 4~7층 (춘의동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">38. 부천사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-678-0114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 부천시 장말로 373, 한국몬테소리빌딩 (심곡동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">39.늘푸른병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-967-9966</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 고양시 덕양구 원당로 139 (주교동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">40. 더블유진병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-321-1433</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 부천시 신흥로 244 지하1층, 1~5층 (중동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">41. 고양정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-969-0885</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 고양시 덕양구 통일로 1102번길 46</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">42. 이룸병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-674-5567-</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 부천시 수도로 93 (내동, 태양빌딩 2층,3층일부,4층,5층)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">43. 루카스병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 032-310-0100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 부천시 경인로 88 지하1,1층,3~6층 (송내동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">44. 카프성모병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-810-9200</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 고양시 일산동구 일산로 86 (백석동, 한국음주문화센터)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">45. 연세서울병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-907-9920</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 고양시 일산동구 중앙로 1200 삼희골드프라자 5,6,7,9층 902호 (마두동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">46. 김포다은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-996-1338</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 김포시 돌문로 111 (사우동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">47. 민들레병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-947-6400</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 파주시 탄현면 소리개길 74-17 민들레병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">48. 김포한누리병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-981-3000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 김포시 월곶면 김포대로 2515-26</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">49. 양주소망병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-859-7997</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 양주시 평화로 1741-1741 (회정동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">50. 의료법인 계요 의료재단 계요병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 031-455-3333</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 경기도 의왕시 오전로 15-15 (왕곡동, 계요병원)</p>



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

