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
            height: 2430px;
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
    <div style="width: 49%; height: 2430px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">부산 정신병원 전화번호&주소</h3>



        <p style="font-size: 24px; margin-left: 10px; font-weight: bold; color: #007bff; margin-top: 25px">1. 다움병원</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">전화번호: 051-508-0011</p>
        <p style="margin-left: 15px; font-size: 19px; font-weight: bold">주소: 부산광역시 금정구 체육공원로 608 (두구동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">2. 의료법인 영파의료재단 마음향기병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-5116-1220</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 금정구 금샘로 56 (장전동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">3. 아하브병원 (의료법인백양의료재단)</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-333-8600</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 북구 만덕고개길 84</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">4. 의료법인 주현의료재단 사상중앙병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-305-7001</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 삼덕로5번길 85 (삼락동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">5. 온사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-555-0808</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 금정구 서동로 197-1 (서동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">6. 동래나눔과행복병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-507-7011</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 연제구 중앙대로 1239 (거제동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">7. 우리병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-323-5513</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 사상로 237-237 (괘법동,1,2,4,5,층)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">8. 의료법인 동영의로재단 상록병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-555-8009</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 동래구 충렬대로 426 (안락동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">9. 의료법인 효원의료재단 주례자연병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-324-1004</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 학장로 325 (주례동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">10. 성은의료재단 연산병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-866-5050</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 연제구 배산북로 50 (연산동,배산북로 47)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">11. 부산시립정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-312-2288</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 학감대로39번길 104-36 (학장동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">12. 의료법인 길정의료재단 길정병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-320-6450</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 학감대로 39번길 116 (학장동)</p>

    </div>




    <div style="width: 49%; height: 2180px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; margin-right: 20px; margin-top: 50px">
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">13. 의료법인 길정의료재단 대남병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-324-2227</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사상구 학감대로 39번길 116(학장동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">14. 더힐러스병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-715-1144</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 동구 범일로 112 (범일동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">15. 의료법인인본의료재단 해운대자명병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-780-5566</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 해운대구 해운대로 469번 가길 75-75(우동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">16. 밝은마음병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-746-7272</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 해운대구 해운대로 575 2~5층 (우동, 국제빌딩)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">17. 괴정병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-205-2611</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사하구 낙동대로 248 4,8,9,10층 (괴정동,우리메디칼센터)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">18. 예사랑병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-248-9000</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 서구 옥천로 130번길 38 (아미동2가)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">19. 의료법인벧엘의료재단 부산정신병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-263-8991/p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사하구 하신중앙로 3번 나길 10 (장림동,부산정신병원)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">20. 다대자연병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-204-5004</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 사하구 장평로 1 (장림동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">21. BH병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-633-6665</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 남구 수영로 165-165 (대연동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">22. 대연성모병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-621-2312</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 남구 황령대로 353번길 66-66 (대연동)</p>
        <br>
        <hr>
        <p style="font-size: 24px; margin-left: 10px; margin-top: 25px; font-weight: bold; color: #007bff">23. 의료법인 인례의료재단 가나병원</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">전화번호: 051-624-6666</p>
        <p style="margin-left: 15px;font-weight: bold; font-size: 19px">주소: 부산광역시 남구 유엔평화로 156-156 (용당동)</p>
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

