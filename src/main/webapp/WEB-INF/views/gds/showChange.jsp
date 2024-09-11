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
            height: 100%;
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
            color: #ffffff;
            display: block;
            background-color: #23272b;
        }

        #navbar a:hover {
            color: #f1f1f1;
        }

        #regionDropdown {
            margin-top: 15px;
            display: none;
            position: absolute;
            background-color: #007bff;
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
        <a href="/page/index" style="color: white; text-decoration: none; font-size: 21px">메인화면</a>
    </div>
</div>

<div id="navbar">
    <a href="#" onclick="showMyInfo()">내 정보</a>
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
    <div id="ageChartContainer" style="width: 49%; height: 650px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">연령대별 우울증 비율</h3>
        <canvas id="ageDoughnutChart" style="height: 520px; width: 600px; margin-left: 45px"></canvas>
    </div>

    <div style="width: 49%; height: 650px; border: 2px solid #6c757d;  box-sizing: border-box; color: #002752; border-radius: 8px; margin-right: 20px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px;border-bottom: 1px solid #6c757d; padding-left: 10px;">남녀 우울증 비율</h3>
        <canvas id="genderDoughnutChart" style="height: 520px; width: 600px; margin-left: 65px"></canvas>
    </div>
</div>

<script>
    function showMyInfo() {
        window.location.href = "/gds/gdsResult";
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



    var ageChartData = {
        labels: ["20세 미만", "20~29세", "30~39세", "40~49세", "50~59세", "60~69세", "70~79세", "80세 이상"],
        datasets: [{
            data: [5.8, 16.9, 13.4, 13.3, 14.5, 15.8, 13.4, 7.0],
            backgroundColor: [
                '#FF6384',
                '#36A2EB',
                '#FFCE56',
                '#4BC0C0',
                '#9966FF',
                '#FF9900',
                '#FF0000',
                '#00FF00'
            ],
        }]
    };

    var genderChartData = {
        labels: ["남자", "여자"],
        datasets: [{
            data: [34, 66],
            backgroundColor: [
                '#36A2EB',
                '#FF6384',
            ],
        }]
    };

    var ageChartCanvas = document.getElementById('ageChartContainer').querySelector('canvas');
    var ageDoughnutChart = new Chart(ageChartCanvas, {
        type: 'doughnut',
        data: ageChartData,
        options: {
            responsive: false,
            maintainAspectRatio: false,
            legend: {
                labels: {
                    fontSize: 18 // 레이블 크기 조절
                },
                display: false
            }
        }
    });

    var genderChartCanvas = document.getElementById('genderDoughnutChart').getContext('2d');
    var genderDoughnutChart = new Chart(genderChartCanvas, {
        type: 'doughnut',
        data: genderChartData,
        options: {
            responsive: false,
            maintainAspectRatio: false,
            legend: {
                labels: {
                    fontSize: 18 // 레이블 크기 조절
                },
                display: false
            }
        }
    });
</script>

</body>
</html>
