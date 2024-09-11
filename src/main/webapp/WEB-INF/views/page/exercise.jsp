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
            background: linear-gradient(to right,#06357a,#007bff,#80bdff);
            overflow: hidden;
            padding: 20px;
            text-align: left;
            color: white;
        }

        #navbar {
            height: 2630px;
            width: 200px;
            background: linear-gradient(to bottom,#06357a,#007bff,#80bdff);
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

        /*#regionDropdown {*/
        /*    margin-top: 15px;*/
        /*    display: none;*/
        /*    position: absolute;*/
        /*    background-color: #23272b;*/
        /*    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);*/
        /*    z-index: 1;*/
        /*}*/

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

<div id="top-navbar" style="display: flex; justify-content: space-between; align-items: center; padding: 32px; ">
    <a style="font-size: 35px; color: white;">exercise</a>
    <div>
        <a href="/page/test" style="color: white; text-decoration: none; font-size: 21px">메인화면</a>
    </div>
</div>

<div id="navbar">
    <a href="#" onclick="showMyInfo()" style=" font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">운동</p></a>
    <a href="#" onclick="showChange()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">식단</p></a>
    <a href="#" onclick="showNumber()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">수면</p></a>


</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 col-12 p-0">
            <div id="hero-slide" class="carousel carousel-fade slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" style="display: flex; justify-content: flex-end; align-items: center; position: relative;">

                        <img src="/image/노인운동1.avif" class="carousel-image img-fluid" alt="..." style="width: 55%; height: 30%; display: block; margin: 0 auto;
                                                                              margin-left: 200px; border-radius: 5px;">

                        <div class="carousel-caption d-flex flex-column justify-content-end" style="position: absolute; right: 35px; width: 43%;">

                            <div style=" margin-top: 200px;">
                                <%--                                                        <h1 style="color: black; margin-bottom: 0; position: absolute; bottom: 90px; margin-top: 10px; margin-left: 210px; font-weight: bold">활기찬 노후, 건강한 노인을 위한 운동 안내</h1>--%>
                                <p style="font-size: 24px; color: rebeccapurple; position: absolute; bottom: 20px; margin-left: 150px; font-weight: bold; margin-top: 300px; font-family: Arial; ">
                                    건강한 노후의 시작, 함께 즐기는 운동으로 신체와 마음을 <br><br>활기차게 유지하세요.
                                    <br><br><br>더 나은 삶을 향해 한 발짝씩 나아가며, 건강한 몸과 정신으로<br><br> 행복한 노후를 만들어봐요!
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: flex; justify-content: space-between; margin-top: 1px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">스트레칭</h3>
        <img src="/image/스트레칭.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showExercise1" style=" text-align: center;  text-decoration: none;
        background-color: #0a53be; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">스트레칭은 우울증 예방에서 핵심 역할을 합니다. 근육 유연성과 관절 움직임을 향상시켜
            몸의 민첩성을 높이며, 긴장을 완화하고 긍정적인 에너지를 가져옵니다.<br>
            편안하게 적용 가능한 스트레칭 루틴을 통해 피로를 줄이고,<br>
            건강하고 행복한 노년을 즐길 수 있습니다.</p>
    </div>
</div>





<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">유산소 운동</h3>
        <img src="/image/유산소.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showExercise2" style=" text-align: center;  text-decoration: none;
        background-color: #0a53be; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">
            유산소 운동은 우울증 예방에서 핵심 역할을 합니다.<br>
            몸의 민첩성과 근육 유연성을 향상시키며 긴장을 완<br>
            화 하고 긍정적인 에너지를 가져옵니다. <br>
            편안한 유산소 운동은 피로를 줄이고 <br>
            건강한 노년을 즐길 수 있는 좋은 방법입니다.
    </div>
</div>



<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">근력 운동</h3>
        <img src="/image/근력.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showExercise3" style=" text-align: center;  text-decoration: none;
        background-color: #0a53be; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">

            근력운동은 우울증 예방에 중요한 역할을 합니다. <br>
            근육을 강화하여 일상 생활 도움과 골다공증 예방<br>
            에 효과적이며,몸 기능 유지와 노년 건강을 지원합니다.<br>
            간단한 근력운동 루틴으로 건강한 생활을 누리세요.
    </div>
</div>



<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #0a53be; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">명상</h3>
        <img src="/image/명상.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showExercise3" style=" text-align: center;  text-decoration: none;
        background-color: #0a53be; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #06357a; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">

            명상은 우울증 예방에 중요한 역할을 합니다. <br>
            간단한 명상 루틴을 통해 하루의 바쁜 일상에서<br>
            조금이라도 시간을 내어 마음의 평화를 찾아보세요.<br>
            자연스럽게 스트레스를 줄이고 긍정적인 마음을 <br>
            유지할 수 있을 것입니다.
    </div>
</div>




<script>

    function showMyInfo() {
        window.location.href = "/page/exercise";
    }

    function showChange() {
        window.location.href = "/page/food";
    }

    function showNumber() {
        // document.getElementById("regionDropdown").style.display = "block";
        window.location.href = "/page/sleep";
    }



</script>

</body>
</html>

