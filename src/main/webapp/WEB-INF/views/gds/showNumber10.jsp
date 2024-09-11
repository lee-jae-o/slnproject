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
            height: 3420px;
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
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">충북 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 의료법인 창민의료재단 제천병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 043-640-6100</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 충청북도 제천시 북부로 13길 94-0 제천병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 의료법인 음성소망의료재단 음성소망병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-878-4111</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 음성군 생극면 일생로 518 (생극면)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 의료법인 현대소망의료재단 현대병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-878-4341</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 음성군 생극면 일생로 516-0</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 의료법인 동숙의료재단 벧엘기독병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-833-1004</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 괴산군 문광면 흑석2길 20-148 벧엘기독병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 의료법인 노은의료재단 도은병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-930-2000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 진천군 문백면 문진로 88-56 (문백면)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 예사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-298-7337</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 청주시 상당구 목련로 64-0 예사랑병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 주사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-286-0692</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 청주시 상당구 가덕면 보청대로 4673-61 주사랑병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 의료법인 의명의료재단 보은성모병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-542-3100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 보은군 보은읍 뱃들로 53-0</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 의료법인 혜광의료재단 충북병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-260-8200</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 청주시 서원구 현도면 우록4길 151-0</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 의료법인 요섭의료재단 감람원병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-732-2070</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 옥천군 청성면 청성로 654-1</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 의료법인 다원의료재단 영동제일병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 043-732-2070</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청북도 영동군 양강면 양정죽촌로 53-12</p>

    </div>




    <div style="width: 49%; height: 3420px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 10px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">충남 정신병원 전화번호&주소</h3>
        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 천안희망병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 041-567-2580</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 충청남도 천안시 동남구 병천면 충절로 1782</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 천안중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-561-0245</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 천안시 서북구 동서대로 129-16 (성정동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 혜강병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-555-8275</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 천안시 동남구 대흥로 288 (성황동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 마음애병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-543-3580</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 천안시 서북구 검은들3길 60 리치프라자 (불당동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 열린성애병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-543-3580</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 아산시 음봉면 음봉로 681번길 76</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 아산병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-548-9851</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 아산시 배방읍 휴대세교길 101</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 아람메디컬 병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-533-6119</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 아산시 온천대로 1740번길 9 (풍기동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 국립법무병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-840-5400</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 공주시 반포면 반포초교길 253 (공주치료감호소)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 맑은마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-852-7979</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 공주시 금벽로 351 (신관동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 국립공주병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-850-5700</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 공주시 고분티로 623-21 (오곡동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 홍성한국병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-634-2088</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 홍성군 홍성읍 대내길 97 홍성한국병원</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 신동환병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-631-7541</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 홍성군 홍성읍 홍성천길 214 두리프라자 4~6층</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 보여청담병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-833-2089</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 부여군 부여읍 삼충로 648번길 41</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 성지하입병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-734-9100</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 논산시 연산면 한전2길 52 (연산면)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 의료법인 부여의료재단 부여다사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-832-7261</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 부여군 장암면 충절로 1713번길 16</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 보령엘피스 병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-934-1522</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 보령시 옥마로 277 (화산동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 서천사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 041-951-8114</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 충청남도 서천군 판교면 대백제로 2078</p>

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

