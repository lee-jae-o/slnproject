<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="project.sln.util.CmmUtil" %>
<%@ page import="project.sln.dto.GdsDTO" %>
<%@ page import="java.util.ArrayList" %>
<%

    List<GdsDTO> gdsList = (List<GdsDTO>) request.getAttribute("gdsList");

    String loggedInUserId = (String) session.getAttribute("SS_USER_ID");
    String userName = (String) session.getAttribute("SS_USER_NAME");

    // 로그인한 사용자의 결과만 추출
    List<GdsDTO> filteredList = new ArrayList<>();
    if (gdsList != null) {
        for (GdsDTO dto : gdsList) {
            if (loggedInUserId.equals(dto.getUserId())) {
                filteredList.add(dto);
            }
        }
    }

    // Calculate average score
    double averageScore = 7.0; // Set your average score here
    double userScore = 0.0;


    if (!filteredList.isEmpty()) {
        userScore = Double.parseDouble(filteredList.get(0).getScore());
    }

%>


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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gds Result</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>


<%
    if (!filteredList.isEmpty()) {
%>


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









<div style="display: flex; justify-content: space-between; margin-top: 20px; margin-left: 220px;">

    <div style="width: 34%; height:500px; border: 2px solid #6c757d; padding-bottom: 30px;box-sizing: border-box; color: #002752; border-radius: 8px; ">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">사용자 정보</h3>
        <p style="margin-top: 87px; font-size: 22px; font-weight: bold; margin-left: 10px">아이디: <%= CmmUtil.nvl(filteredList.get(0).getUserId()) %></p>
        <p style="margin-top: 37px; font-size: 22px; font-weight: bold; margin-left: 10px">이름: <%= CmmUtil.nvl(filteredList.get(0).getUserName()) %></p>
        <p style="margin-top: 37px; font-size: 22px; font-weight: bold; margin-left: 10px">검사 날짜: <%= CmmUtil.nvl(filteredList.get(0).getTestDate()) %></p>
        <p style="margin-top: 37px; font-size: 22px; font-weight: bold; margin-left: 10px" >내 점수: <strong style="font-size: 30px"><%= String.format("%.0f", userScore) %>점</p></strong>
    </div>

    <div style="width: 64%; height: 500px; border: 2px solid #6c757d; padding-bottom: 30px; box-sizing: border-box; color: #002752; border-radius: 8px; margin-right: 20px">
        <h3  style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">비교 그래프</h3>
        <div style="position: relative; height: 84%; margin-left: 60px">
        <canvas id="scoreChart" width="400" height="200"></canvas>
        </div>
        <p id="statusText" style="position: absolute; top: 337px; left: 560px; font-size: 45px"></p>
    </div>

</div>


<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">

    <div style="width: 34%; height: 250px; border: 2px solid #6c757d; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 id="statusTitle" style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 10px">내 상태</h3>
        <p id="statusDescription" style="font-size: 18px; font-weight: bold; margin-top: 20px;"></p>
    </div>


    <div style="width: 64%; height: 250px; border: 2px solid #6c757d;  box-sizing: border-box; color: #002752; border-radius: 8px; margin-right: 20px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px;border-bottom: 1px solid #6c757d; padding-left: 10px;">의견</h3>
        <p id="comment" style="font-size: 20px; font-weight: bold; margin-top: 10px; white-space: pre-line; margin-left: 10px"></p>
    </div>

</div>




<script>



    var ctx = document.getElementById('scoreChart').getContext('2d');
    var userScore = <%= userScore %>;
    var averageScore = <%= averageScore %>;

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





    function getStatusColor(status) {
        switch (status) {
            case "정상":
                return "green";
            case "주의":
                return "orange";
            case "위험":
                return "red";
            default:
                return "black";
        }
    }


    function setStatusText() {
        var statusText = document.getElementById('statusText');
        var status;
        var userName = "<%= userName %>";
        var commentText = document.getElementById('comment');
        var statusDescription = document.getElementById('statusDescription');

        if (userScore >= 0 && userScore <= 5) {
            status = "정상";
            commentText.innerHTML = "테스트 결과를 확인해보니 여러 항목들에 대한 평가에서 " + userName +" 님은 건강하고 안정된 상태를 유지하고 있습니다. 정상 범주에 속하는 결과로, 심리적인 안녕함과 정서적인 안정을 경험하고 있을 것으로 예상됩니다.\n이러한 상태를 지속적으로 유지하기 위해 일상적인 습관을 유지하고, 긍정적인 삶의 태도를 유지하는 것이 중요합니다. 주기적인 휴식과 스트레스관리에도 신경 써주시기 바랍니다.";
            statusText.style.color = "green";


        } else if (userScore >= 6 && userScore <= 10) {
            status = "주의";
            commentText.innerHTML = "테스트 결과에 따르면, 일부 항목에서 주의가 필요한 상태로 나타났습니다.이는 현재 심리적인 상태에서 일부 미흡한 부분이 관찰되고 있음을 의미합니다.주의 상태에 있는 사용자들은 개선의 여지가 있지만, 현재의 신호에 주의를 기울이고적절한 조치를 취함으로써 더 나은 상태를 창출할 수 있습니다. 일상적인 생활에서 습관의 변화나 긍정적인 심리적 자극을 통해 이러한 부분을 개선하는 것이 도움이 될 것입니다.";
            statusText.style.color = "orange";


        } else if (userScore >= 11 && userScore <= 15) {
            status = "위험";
            commentText.innerHTML = "테스트 결과에 따르면, 일부 항목에서 위험한 상태로 평가되었습니다. 이는 현재의 심리적인 상태에서 심각한 어려움이 발생하고 있을 수 있음을 나타냅니다. 위험 상태에 있는 사용자들은 가능한 빠른 시일 내에 전문가와의 상담을 고려하는 것이 중요합니다.전문적인 도움을 받으면 문제를 인식하고, 해결하고, 성장할 수 있는 기회가 열릴 수 있습니다.주변의 지원 시스템에 연락하여 적절한 도움을 받을 수 있도록 도와드리겠습니다.";
            statusText.style.color = "red";


        } else {
            status = "";
            statusText.style.color = "black";
        }




        statusDescription.style.color = getStatusColor(status);
        statusDescription.style.fontSize = "70px";
        statusDescription.style.fontWeight = "bold";
        statusDescription.style.textAlign = "center";  // 텍스트 중앙 정렬
        statusDescription.innerHTML = status;
    }

    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['내 점수', '평균 점수'],
            datasets: [{
                label: '내 점수',
                data: [<%= userScore %>, <%= averageScore %>],
                backgroundColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(255, 99, 132, 1)',
                ],

                borderColor: [
                    'rgba(0, 0, 255, 1)',
                    'rgba(255, 0, 0, 1)',
                ],
                borderWidth: 0,
                barThickness: 80


            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            },

            plugins: {
                legend: {
                    display: false
                }
            },
            plugins: {
                datalabels: {
                    anchor: 'end',
                    align: 'end',
                    font: {
                        size: 73,
                        weight: 'bold'
                    }
                }
            }
        }
    });


    setStatusText();
</script>

<%
} else {
%>
<p>No data available.</p>
<%
    }
%>

<%--<div style="float: left">--%>
<%--    <button onclick="printPage()" style="margin-top: 20px; width: 155px; height: 50px;--%>
<%--    border-radius: 7px; font-size: 17px; cursor: pointer; font-weight: bold">인쇄하기</button>--%>
<%--</div>--%>

<%--<script>--%>
<%--    function printPage() {--%>
<%--        window.print();--%>
<%--    }--%>
</script>
</body>
</html>
