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
            background: linear-gradient(to right,#002752,#6610f2,#9053c7);
            overflow: hidden;
            padding: 20px;
            text-align: left;
            color: white;
        }

        #navbar {
            height: 1830px;
            width: 200px;
            background: linear-gradient(to bottom,#002752,#6610f2,#9053c7);
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
    <a style="font-size: 35px; color: white;">sleep</a>
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

                        <img src="/image/수면1.jpg" class="carousel-image img-fluid" alt="..." style="width: 50%; height: 25%; display: block; margin: 0 auto;
                                                                              margin-left: 200px; border-radius: 5px;">

                        <div class="carousel-caption d-flex flex-column justify-content-end" style="position: absolute; right: 35px; width: 43%;">

                            <div style=" margin-top: 200px;">
                                <%--                                                        <h1 style="color: black; margin-bottom: 0; position: absolute; bottom: 90px; margin-top: 10px; margin-left: 210px; font-weight: bold">활기찬 노후, 건강한 노인을 위한 운동 안내</h1>--%>
                                <p style="font-size: 24px; color: #002752; position: absolute; bottom: 20px; margin-left: 150px; font-weight: bold; margin-top: 300px; font-family: Arial; ">
                                    건강한 노후의 시작, 함께 즐기는 수면으로 <br><br>
                                    신체와 마음을 활기차게 유지하세요.<br><br>
                                    더 나은 삶을 향해 한 발짝씩 나아가며, 꾸준하고<br><br>
                                    품질 좋은 수면을 통해 건강한 노후를 만들어봐요!
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: flex; justify-content: space-between; margin-top: 1px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #002752; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #002752; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">습관 및 팁</h3>
        <img src="/image/수면팁.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showSleep1" style=" text-align: center;  text-decoration: none;
        background-color: #002752; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #002752; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">
            건강한 노후를 위해 수면에도 신경 써보세요. 휴대폰과 컴퓨터 사용을 자제하고,
            편안한 환경과 규칙적인 수면 습관을 만들어보세요.
            잠들기 전에 차분한 음악이나 책으로 마음을 안정시키고,
            침실을 편안하게 꾸미는 것도 좋은 방법입니다.
            건강한 수면은 더 나은 노후를 위한 중요한 요소입니다.
    </div>
</div>





<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #002752; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #002752; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">수면질환 및 예방법</h3>
        <img src="/image/질환.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showSleep2" style=" text-align: center;  text-decoration: none;
        background-color: #002752; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">

            만약 만성적인 수면 문제가 있다면 전문가와 상담이 필요합니다. 불면증이나
            수면무호흡증과 같은 질환은 적절한 치료와 관리가 필요합니다. 규칙적인 운동,
            스트레스 관리, 건강한 식습관은 건강한 수면을 유지하는데 도움이 됩니다.
            또한, 침실 환경을 향상시키고 자기 전에 활동을 자제하여 수면 퀄리티를 향상시킬 수 있습니다.
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

