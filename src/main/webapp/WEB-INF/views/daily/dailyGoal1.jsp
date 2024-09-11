<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>노인 우울증 관리</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: 'Arial', sans-serif;--%>
<%--            text-align: center;--%>
<%--            margin: 20px;--%>
<%--            background-color: #f4f4f4;--%>
<%--        }--%>
<%--        #date {--%>
<%--            font-size: 20px;--%>
<%--            margin-bottom: 20px;--%>
<%--            color: #333;--%>
<%--            margin-left: 20px;--%>
<%--            font-weight: bold;--%>
<%--            border-bottom: #fd7e14;--%>
<%--        }--%>

<%--        #goalButton {--%>
<%--            padding: 15px 30px;--%>
<%--            font-size: 20px;--%>
<%--            cursor: pointer;--%>
<%--            background-color: #4CAF50;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            border-radius: 8px;--%>
<%--            margin-top: 100px;--%>
<%--        }--%>
<%--        #goalButtons {--%>
<%--            margin-top: 105px;--%>
<%--        }--%>
<%--        .stepButton {--%>
<%--            padding: 15px 30px;--%>
<%--            font-size: 18px;--%>
<%--            cursor: pointer;--%>
<%--            margin: 5px;--%>
<%--            border-radius: 8px;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--        }--%>
<%--        .stepButton:nth-child(2) {--%>
<%--            background-color: #2196F3;--%>
<%--        }--%>
<%--        .stepButton:nth-child(3) {--%>
<%--            background-color: #f44336;--%>
<%--        }--%>
<%--        #modal {--%>
<%--            display: none;--%>
<%--            position: fixed;--%>
<%--            z-index: 1;--%>
<%--            left: 0;--%>
<%--            top: 0;--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            overflow: auto;--%>
<%--            background-color: rgba(0, 0, 0, 0.4);--%>
<%--        }--%>
<%--        #modal-content {--%>
<%--            background-color: #fefefe;--%>
<%--            margin: 15% auto;--%>
<%--            padding: 30px;--%>
<%--            border: 1px solid #888;--%>
<%--            width: 50%;--%>
<%--            text-align: center;--%>
<%--            border-radius: 10px;--%>
<%--        }--%>
<%--        #result-buttons {--%>
<%--            display: none;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        .resultButton {--%>
<%--            padding: 20px 25px;--%>
<%--            font-size: 21px;--%>
<%--            cursor: pointer;--%>
<%--            margin: 5px;--%>
<%--            border: none;--%>
<%--            border-radius: 10px;--%>
<%--        }--%>
<%--        .resultButton:nth-child(1) {--%>
<%--            background-color: #28a745;--%>
<%--            color: white;--%>
<%--        }--%>
<%--        .resultButton:nth-child(2) {--%>
<%--            background-color: #a52834;--%>
<%--            color: white;--%>
<%--        }--%>
<%--        #alertModal {--%>
<%--            display: none;--%>
<%--            position: fixed;--%>
<%--            z-index: 1;--%>
<%--            left: 0;--%>
<%--            top: 0;--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            overflow: auto;--%>
<%--            background-color: rgba(0, 0, 0, 0.4);--%>
<%--        }--%>
<%--        #alert-content {--%>
<%--            background-color: #fefefe;--%>
<%--            margin: 15% auto;--%>
<%--            padding: 30px;--%>
<%--            border: 1px solid #888;--%>
<%--            width: 50%;--%>
<%--            text-align: center;--%>
<%--            border-radius: 10px;--%>
<%--        }--%>
<%--        #alert-text {--%>
<%--            font-family: Arial;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 24px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div id="date"></div>--%>

<%--<%--%>
<%--    String userId = (String) session.getAttribute("SS_USER_ID");--%>
<%--    if (userId != null && !userId.isEmpty()) {--%>
<%--%>--%>
<%--<button id="goalButton" onclick="showGoalButtons()">목표 받기</button>--%>
<%--<%--%>
<%--} else {--%>
<%--%>--%>
<%--<button id="goalButton" onclick="showLoginAlert()">목표 받기</button>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>

<%--<div id="goalButtons" style="display:none;">--%>
<%--    <button class="stepButton" onclick="selectStep(1)" style="background-color: #4CAF50;">1단계</button>--%>
<%--    <button class="stepButton" onclick="selectStep(2)" style="background-color: #2196F3;">2단계</button>--%>
<%--    <button class="stepButton" onclick="selectStep(3)" style="background-color: #f44336;">3단계</button>--%>
<%--</div>--%>

<%--<div id="modal">--%>
<%--    <div id="modal-content">--%>
<%--        <p id="modal-text" style="font-family: Arial; font-weight: bold; font-size: 24px">미션 진행 중입니다!</p>--%>
<%--        <img src="/image/미션.jpg" style="width: 400px; height: 400px">--%>
<%--        <div id="result-buttons">--%>
<%--            <button class="resultButton" onclick="missionResult(true)">미션 성공</button>--%>
<%--            <button class="resultButton" onclick="showFailureAlert()">미션 실패</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div id="alertModal">--%>
<%--    <div id="alert-content">--%>
<%--        <p id="alert-text"></p>--%>
<%--        <button onclick="hideAlertModal()">확인</button>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    function displayDate() {--%>
<%--        var today = new Date();--%>
<%--        var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };--%>
<%--        document.getElementById('date').innerText = today.toLocaleDateString('ko-KR', options);--%>
<%--    }--%>

<%--    function showGoalButtons() {--%>
<%--        document.getElementById('goalButtons').style.display = 'block';--%>
<%--    }--%>

<%--    function showLoginAlert() {--%>
<%--        alert('로그인 후 이용하세요.');--%>
<%--        // 로그인 페이지로 이동--%>
<%--        window.location.href = '/user/login';--%>
<%--    }--%>

<%--    function showFailureAlert() {--%>
<%--        document.getElementById('alert-text').innerText = '아깝습니다. 다음에 다시 도전해보세요!';--%>
<%--        showAlertModal();--%>
<%--    }--%>

<%--    function showAlertModal() {--%>
<%--        document.getElementById('alertModal').style.display = 'block';--%>
<%--    }--%>

<%--    function hideAlertModal() {--%>
<%--        document.getElementById('alertModal').style.display = 'none';--%>
<%--        reset();--%>
<%--        // 실패 알람 확인 시 /page/test 페이지로 이동--%>
<%--        window.location.href = '/page/test';--%>
<%--    }--%>

<%--    function selectStep(step) {--%>
<%--        if (step === 1) {--%>
<%--            showRandomActivity1();--%>
<%--        } else if (step === 2) {--%>
<%--            showRandomActivity2();--%>
<%--        } else if (step === 3) {--%>
<%--            showRandomActivity3();--%>
<%--        }--%>
<%--    }--%>

<%--    function showRandomActivity1() {--%>
<%--        var activities = [--%>
<%--            "10초 동안 억지로라도 웃어보기",--%>
<%--            "좋아하는 음악 한 곡 이상 듣기",--%>
<%--            "나는 행복하다 10번 외치기",--%>
<%--            "창문을 열고 바깥 자연 소리를 5분 동안 듣기",--%>
<%--            "새소리나 파도 소리 같은 자연 소리를 찾아 10분간 듣기",--%>
<%--            "사진첩에서 예전 가족 사진을 찾아보고, 그때의 기억을 떠올려보기",--%>
<%--            "팔과 다리를 5회씩 움켜잡기",--%>
<%--            "맛있는 음식에 대한 상상을 하며 입맛 돋우기"--%>
<%--        ];--%>

<%--        var randomIndex = Math.floor(Math.random() * activities.length);--%>
<%--        var selectedActivity = activities[randomIndex];--%>

<%--        showModal();--%>
<%--        alert(selectedActivity);--%>
<%--    }--%>

<%--    function showRandomActivity2() {--%>
<%--        var activities = [--%>
<%--            "아무한테나 연락해서 안부묻기",--%>
<%--            "30분동안 산책하기",--%>
<%--            "지역 예술관이나 박물관을 방문해 다양한 문화 작품 감상하기",--%>
<%--            "종교적인 모임이나 행사에 참여해보기",--%>
<%--            "집에서 혼자 1분동안 춤추기"--%>
<%--        ];--%>

<%--        var randomIndex = Math.floor(Math.random() * activities.length);--%>
<%--        var selectedActivity = activities[randomIndex];--%>

<%--        showModal();--%>
<%--        alert(selectedActivity);--%>
<%--    }--%>

<%--    function showRandomActivity3() {--%>
<%--        var activities = [--%>
<%--            "지역 커뮤니티 센터에서 자원봉사자로 참여해보기",--%>
<%--            "밖에 나가서 아무한테나 인사해보기",--%>
<%--            "건강에 도움이 되는 요리 레시피를 찾아 실제로 요리해보기",--%>
<%--            "1시간이상 산책하기",--%>
<%--            "자신의 관심사나 목표에 따라 독서 클럽이나 학습 그룹에 참여하기",--%>
<%--            "한 달 동안 도전적인 목표를 세우고 그에 대한 달성 계획 수립하기"--%>
<%--        ];--%>

<%--        var randomIndex = Math.floor(Math.random() * activities.length);--%>
<%--        var selectedActivity = activities[randomIndex];--%>

<%--        showModal();--%>
<%--        alert(selectedActivity);--%>
<%--    }--%>

<%--    function missionResult(success) {--%>
<%--        if (success) {--%>
<%--            document.getElementById('modal-text').innerText = '미션 성공했습니다!';--%>
<%--        } else {--%>
<%--            document.getElementById('modal-text').innerText = '미션 실패했습니다.';--%>
<%--        }--%>
<%--        reset();--%>
<%--        // 미션 성공 또는 실패 시 /daily/dailyGoal2 페이지로 무조건 이동--%>
<%--        window.location.href = '/daily/dailyGoal2';--%>
<%--    }--%>

<%--    function showModal() {--%>
<%--        document.getElementById('modal').style.display = 'block';--%>
<%--        document.getElementById('result-buttons').style.display = 'block';--%>
<%--    }--%>

<%--    function reset() {--%>
<%--        document.getElementById('result-buttons').style.display = 'none';--%>
<%--        document.getElementById('modal').style.display = 'none';--%>
<%--    }--%>

<%--    window.onload = function () {--%>
<%--        displayDate();--%>
<%--    };--%>

<%--    // 나머지 함수들은 그대로 유지합니다.--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>노인 우울증 관리</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            margin: 20px;
            background-color: #f4f4f4;
        }
        #date {
            font-size: 20px;
            margin-bottom: 20px;
            color: #333;
            margin-left: 20px;
            font-weight: bold;
            border-bottom: 2px solid #fd7e14;
            padding-bottom: 10px;
        }

        #goalButton {
            padding: 15px 30px;
            font-size: 20px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            margin-top: 50px;
        }
        #goalButtons {
            margin-top: 30px;
            display: flex;
            justify-content: center;
        }
        .stepButton {
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            margin: 5px;
            border-radius: 8px;
            color: white;
            border: none;
        }
        .stepButton:nth-child(2) {
            background-color: #2196F3;
        }
        .stepButton:nth-child(3) {
            background-color: #f44336;
        }
        #modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }
        #modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 30px;
            border: 1px solid #888;
            width: 50%;
            text-align: center;
            border-radius: 10px;
        }
        #result-buttons {
            display: none;
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
        }
        .resultButton {
            padding: 20px 25px;
            font-size: 21px;
            cursor: pointer;
            margin: 5px;
            border: none;
            border-radius: 10px;
            flex: 1;
        }
        .resultButton:nth-child(1) {
            background-color: #28a745;
            color: white;
        }
        .resultButton:nth-child(2) {
            background-color: #a52834;
            color: white;
        }
        #alertModal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }
        #alert-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 30px;
            border: 1px solid #888;
            width: 50%;
            text-align: center;
            border-radius: 10px;
        }
        #alert-text {
            font-family: Arial;
            font-weight: bold;
            font-size: 24px;
        }
    </style>
</head>
<body>

<div id="date"></div>

<%
    String userId = (String) session.getAttribute("SS_USER_ID");
    if (userId != null && !userId.isEmpty()) {
%>
<button id="goalButton" onclick="showGoalButtons()">목표 받기</button>
<%
} else {
%>
<button id="goalButton" onclick="showLoginAlert()">목표 받기</button>
<%
    }
%>

<img id="img1" src="/image/목표달성.png" style="position: fixed; bottom: -40px; left: 27.5%; width: 770px; height: 500px; z-index: 1;">


<div id="goalButtons" style="display:none;">
    <button class="stepButton" onclick="selectStep(1)" style="background-color: #4CAF50;">1단계</button>
    <button class="stepButton" onclick="selectStep(2)" style="background-color: #2196F3;">2단계</button>
    <button class="stepButton" onclick="selectStep(3)" style="background-color: #f44336;">3단계</button>
</div>

<div id="modal">
    <div id="modal-content">
        <p id="modal-text" style="font-family: Arial; font-weight: bold; font-size: 24px">미션 진행 중입니다!</p>
        <img src="/image/미션.jpg" style="width: 100%; max-width: 400px; height: auto;">
        <div id="result-buttons">
            <button class="resultButton" onclick="missionResult(true)">미션 성공</button>
            <button class="resultButton" onclick="showFailureAlert()">미션 실패</button>
        </div>
    </div>
</div>

<div id="alertModal">
    <div id="alert-content">
        <p id="alert-text"></p>
        <button onclick="hideAlertModal()">확인</button>
    </div>
</div>

<script>
    function displayDate() {
        var today = new Date();
        var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        document.getElementById('date').innerText = today.toLocaleDateString('ko-KR', options);
    }

    function showGoalButtons() {
        document.getElementById('goalButtons').style.display = 'flex';
    }

    function showLoginAlert() {
        alert('로그인 후 이용하세요.');
        // 로그인 페이지로 이동
        window.location.href = '/user/login';
    }

    function showFailureAlert() {
        document.getElementById('alert-text').innerText = '아깝습니다. 다음에 다시 도전해보세요!';
        showAlertModal();
    }

    function showAlertModal() {
        document.getElementById('alertModal').style.display = 'flex';
    }

    function hideAlertModal() {
        document.getElementById('alertModal').style.display = 'none';
        reset();
        // 실패 알람 확인 시 /page/test 페이지로 이동
        window.location.href = '/page/test';
    }

    function selectStep(step) {
        if (step === 1) {
            showRandomActivity1();
        } else if (step === 2) {
            showRandomActivity2();
        } else if (step === 3) {
            showRandomActivity3();
        }
    }

    function showRandomActivity1() {
        var activities = [
            "10초 동안 억지로라도 웃어보기",
            "좋아하는 음악 한 곡 이상 듣기",
            "나는 행복하다 10번 외치기",
            "창문을 열고 바깥 자연 소리를 5분 동안 듣기",
            "새소리나 파도 소리 같은 자연 소리를 찾아 10분간 듣기",
            "사진첩에서 예전 가족 사진을 찾아보고, 그때의 기억을 떠올려보기",
            "팔과 다리를 5회씩 움켜잡기",
            "맛있는 음식에 대한 상상을 하며 입맛 돋우기"
        ];

        var randomIndex = Math.floor(Math.random() * activities.length);
        var selectedActivity = activities[randomIndex];

        showModal();
        alert(selectedActivity);
    }

    function showRandomActivity2() {
        var activities = [
            "아무한테나 연락해서 안부묻기",
            "30분동안 산책하기",
            "지역 예술관이나 박물관을 방문해 다양한 문화 작품 감상하기",
            "종교적인 모임이나 행사에 참여해보기",
            "집에서 혼자 1분동안 춤추기"
        ];

        var randomIndex = Math.floor(Math.random() * activities.length);
        var selectedActivity = activities[randomIndex];

        showModal();
        alert(selectedActivity);
    }

    function showRandomActivity3() {
        var activities = [
            "지역 커뮤니티 센터에서 자원봉사자로 참여해보기",
            "밖에 나가서 아무한테나 인사해보기",
            "건강에 도움이 되는 요리 레시피를 찾아 실제로 요리해보기",
            "1시간이상 산책하기",
            "자신의 관심사나 목표에 따라 독서 클럽이나 학습 그룹에 참여하기",
            "한 달 동안 도전적인 목표를 세우고 그에 대한 달성 계획 수립하기"
        ];

        var randomIndex = Math.floor(Math.random() * activities.length);
        var selectedActivity = activities[randomIndex];

        showModal();
        alert(selectedActivity);
    }

    function missionResult(success) {
        if (success) {
            document.getElementById('modal-text').innerText = '미션 성공했습니다!';
        } else {
            document.getElementById('modal-text').innerText = '미션 실패했습니다.';
        }
        reset();
        // 미션 성공 또는 실패 시 /daily/dailyGoal2 페이지로 무조건 이동
        window.location.href = '/daily/dailyGoal2';
    }

    function showModal() {
        document.getElementById('modal').style.display = 'flex';
        document.getElementById('result-buttons').style.display = 'flex';
    }

    function reset() {
        document.getElementById('result-buttons').style.display = 'none';
        document.getElementById('modal').style.display = 'none';
    }

    window.onload = function () {
        displayDate();
    };
</script>
</body>
</html>