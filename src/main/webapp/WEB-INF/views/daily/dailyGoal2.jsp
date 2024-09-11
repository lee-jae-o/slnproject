<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나무 키우기</title>
    <!-- 필요한 스타일이 있다면 여기에 추가 -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column-reverse;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h1 {
            color: darkgreen;
            font-weight: bold;
            font-family: Arial;
            font-size: 40px;

        }

        #treeGrowthDisplay {
            font-size: 23px;
            margin-bottom: 3px;
            font-family: Arial;
            font-weight: bold;
            color: saddlebrown;
        }

        #treeImage {
            transition: width 0.5s, height 0.5s;
            border-radius: 10px;
            margin-bottom: 20px;

        }

        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 16px 45px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-bottom: 15px;
        }

        button:hover {
            background-color: #002752; /* 남색으로 변경 */
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
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            text-align: center;
            border-radius: 10px;
        }

        #donationDropdown {
            margin-bottom: 10px;
            padding: 8px;
            font-size: 16px;
        }

        #wateringCan {
            width: 50px; /* 이미지의 너비 조절 */
            height: 50px; /* 이미지의 높이 조절 */
            margin-right: 3px; /* 나무 이미지와의 간격 조절 */
        }



    </style>
</head>
<body>
<img id="img1" src="/image/덩굴2.png" style="position: fixed; top: -50px; left: -40px; width: 310px; height: 500px; z-index: 1;">
<img id="img2" src="/image/덩굴1.png" style="position: fixed; top: -90px; right: -70px; width: 310px; height: 500px; z-index: 2;">
<img id="img3" src="/image/덩굴3.png" style="position: fixed; top: -110px; left: -120px; width: 310px; height: 500px; z-index: 2;">
<img id="img4" src="/image/덩굴5.png" style="position: fixed; top: -90px; right: -110px; width: 310px; height: 500px; z-index: 2;">
<img id="img5" src="/image/덩굴6.png" style="position: fixed; top: -90px; right: 110px; width: 310px; height: 310px; z-index: 2;">
<img id="img6" src="/image/덩굴6.png" style="position: fixed; top: -140px; right: 210px; width: 310px; height: 310px; z-index: 2;">
<img id="img7" src="/image/덩굴7.png" style="position: fixed; top: -30px; left: -210px; width: 310px; height: 500px; z-index: 2;">
<img id="img8" src="/image/덩굴6.png" style="position: fixed; top: -150px; left: 50px; width: 500px; height: 500px; z-index: 2;">
<img id="img9" src="/image/덩굴6.png" style="position: fixed; top: -350px; left: 240px; width: 500px; height: 500px; z-index: 2;">
<img id="img10" src="/image/덩굴9.png" style="position: fixed; top: -410px; right: 280px; width: 500px; height: 500px; z-index: 2;">
<img id="img11" src="/image/잔디.png" style="position: fixed; bottom: -230px; right:50px; width: 500px; height: 500px; z-index: 2;">
<img id="img1" src="/image/잔디.png" style="position: fixed; bottom: -235px; left: -120px; width: 700px; height: 500px; z-index: 1;">
<img id="img1" src="/image/잔디.png" style="position: fixed; bottom: -175px; right: -340px; width: 500px; height: 500px; z-index: 1;">





<%
    String userId = (String) session.getAttribute("SS_USER_ID");
    String userTreeText = userId + "님의 나무";
%>

<h1><%= userTreeText %></h1>
<p id="treeGrowthDisplay">나무 성장 상태: </p>
<img id="treeImage" src="/image/씨앗.jpg" alt="나무 이미지" style="width: 200px; height: 200px;">
<img id="wateringCan" src="/image/물뿌리개.jpg" alt="물뿌리개 이미지">

<button onclick="checkMissionSuccess()">나무에 물 주기</button>

<div id="modal">
    <div id="modal-content">
        <p style="font-size: 20px; font-weight: bold; font-family: Arial">축하합니다. 나무가 다 자랐습니다.</p>
        <img src="/image/나무4.jpg" alt="나무 이미지" style="width: 500px; height: 500px;">
        <p style="font-size: 24px; font-weight: bold; font-family: Arial"><%= userId %>님이 원하는 곳으로 1000원이 기부됩니다.</p>
        <select id="donationDropdown">
            <option value="선택 안 함">기부할 곳을 선택해주세요</option>
            <option value="기부처 1">아동보호시설</option>
            <option value="기부처 2">고아원</option>
            <option value="기부처 2">노인요양원</option>
            <option value="기부처 2">노인복지센터</option>
            <option value="기부처 2">병원</option>
            <option value="기부처 2">학교</option>
        </select>
        <button onclick="confirmDonation()">확인</button>
    </div>
</div>


<script>
    let treeGrowth = localStorage.getItem('treeGrowth') || 0;

    document.getElementById('treeGrowthDisplay').innerText = '나무 성장 상태: ' + treeGrowth;
    updateTreeImage();

    function checkMissionSuccess() {
        let missionSuccess = confirm('미션 성공했나요?');

        if (missionSuccess) {
            treeGrowth++;

            if (treeGrowth === 10) {
                treeGrowth = 0;
                showModal();
            }

            localStorage.setItem('treeGrowth', treeGrowth);

            document.getElementById('treeGrowthDisplay').innerText = '나무 성장 상태: ' + treeGrowth;
            updateTreeImage();
        }
    }

    function updateTreeImage() {
        let treeImage = document.getElementById('treeImage');
        if (treeGrowth >= 0 && treeGrowth <= 2) {
            treeImage.src = '/image/씨앗.jpg';
            setTreeImageSize('280px', '250px');
        } else if (treeGrowth >= 3 && treeGrowth <= 6) {
            treeImage.src = '/image/나무3.jpg';
            setTreeImageSize('350px', '350px');
        } else {
            treeImage.src = '/image/나무2.jpg';
            setTreeImageSize('470px', '440px');
        }
    }

    function setTreeImageSize(width, height) {
        let treeImage = document.getElementById('treeImage');
        treeImage.style.width = width;
        treeImage.style.height = height;
    }

    function showModal() {
        document.getElementById('modal').style.display = 'block';
    }

    function confirmDonation() {
        let selectedOption = document.getElementById('donationDropdown').value;
        if (selectedOption !== "선택 안 함") {
            alert(`${selectedOption}\n기부가 완료되었습니다. \n다시 메인페이지로 이동합니다.`);
            window.location.href = "/page/test";
        } else {
            alert('기부처를 선택하세요.');
        }
        // hideModal();
    }

    function hideModal() {
        document.getElementById('modal').style.display = 'none';
    }
</script>

</body>
</html>