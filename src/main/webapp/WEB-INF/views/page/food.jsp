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
            background: linear-gradient(to right,#bd4147,#fd7e14,orange);
            overflow: hidden;
            padding: 20px;
            text-align: left;
            color: white;
        }

        #navbar {
            height: 2050px;
            width: 200px;
            background: linear-gradient(to bottom,#bd4147,#fd7e14,orange);
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
    <a style="font-size: 35px; color: white;">food</a>
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

                        <img src="/image/식단1.jpg" class="carousel-image img-fluid" alt="..." style="width: 55%; height: 30%; display: block; margin: 0 auto;
                                                                              margin-left: 200px; border-radius: 5px;">

                        <div class="carousel-caption d-flex flex-column justify-content-end" style="position: absolute; right: 35px; width: 43%;">

                            <div style=" margin-top: 200px;">
                                <%--                                                        <h1 style="color: black; margin-bottom: 0; position: absolute; bottom: 90px; margin-top: 10px; margin-left: 210px; font-weight: bold">활기찬 노후, 건강한 노인을 위한 운동 안내</h1>--%>
                                <p style="font-size: 24px; color: #491217; position: absolute; bottom: 20px; margin-left: 150px; font-weight: bold; margin-top: 300px; font-family: Arial; ">
                                    건강한 노후의 시작, 함께 즐기는 식단으로 신체와<br><br>
                                    마음을 활기차게 유지하세요.<br><br>

                                    더 나은 삶을 향해 한 발짝씩 나아가며, <br><br>
                                    건강한 식습관으로 행복한 노후를 만들어봐요!
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div style="display: flex; justify-content: space-between; margin-top: 1px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: darkred; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">채식</h3>
        <img src="/image/채소과일.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showFood1" style=" text-align: center;  text-decoration: none;
        background-color: #721c24; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">
            건강한 노후를 위해 매일 식단에 채소와 과일을 추가하세요.
            다양한 색상과 모양의 식재료는 눈과 입맛을 즐겁게 만들면서 몸과
            마음에도 특별한 영양을 제공합니다. 매일의 식사에 건강을 더하고
            더 나은 노후를 향해 한 발짝 더 나아가 보세요!
    </div>
</div>





<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #491217; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">단백질</h3>
        <img src="/image/프로틴.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showFood2" style=" text-align: center;  text-decoration: none;
        background-color: #721c24; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">

            일상 식단에는 고양이와 채소 뿐만 아니라 단백질도 꼭 포함시켜보세요.
            단백질은 근육을 유지하고 강화하는 데 도움을 주며, 에너지 공급과 신진대사에 중요한 역할을 합니다.
            건강한 노후를 위해서는 균형 잡힌 식단이 필요하니 다양한 소스의
            단백질을 섭취하여 몸에 필요한 영양을 충분히 공급해보세요!
    </div>
</div>



<div style="display: flex; justify-content: space-between; margin-top: 10px; margin-left: 220px;">
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #491217; border-radius: 8px; padding-bottom: 30px;">
        <h3 style="font-size: 30px; color: #721c24; margin-top: 5px; border-bottom: 1px solid #6c757d; padding-left: 30px">간식</h3>
        <img src="/image/간식.jpg" style="width: 49%; height: 82%; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); border-radius: 5px; margin-left: 20px;">
        <a href="/page/showFood3" style=" text-align: center;  text-decoration: none;
        background-color: #721c24; color: white;  padding: 12px; border-radius: 5px; cursor: pointer; width: 30%; ">관련영상 보기</a>
    </div>
    <div style="width: 49%; height: 450px; border: 4px solid #491217; box-sizing: border-box; color: #002752; border-radius: 8px; padding-bottom: 30px; overflow-wrap: break-word;">
        <p style="font-size: 28px; color: #002752; color: #002752; padding-left: 30px; font-family: Arial; font-weight: bold; margin-top: 10%; margin-right: 3%">
            건강한 간식을 선택하여 노후를 더욱 즐겁게 만들어보세요. 식사 간에는 건강한 간식을 즐겨보세요.
            신선한 과일이나 견과류, 그리고 자연스러운 요구르트 등이 좋은 선택일 수 있습니다.
            이러한 간식은 에너지를 공급하면서도 영양분을 풍부하게 제공하여 몸과 마음을 지탱해줄 것입니다.
            매일의 간식도 건강에 유의하며 즐겁게 챙겨보세요!
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

