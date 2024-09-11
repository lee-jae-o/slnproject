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
            height: 2210px;
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
    <a style="font-size: 35px; color: white;">스트레칭</a>
    <div>
        <a href="/page/exercise" style="margin-left: 20px; color: white; text-decoration: none; font-size: 21px; margin-right: 18px">운동 페이지</a>
        <a href="/page/test" style="color: white; text-decoration: none; font-size: 21px">메인화면</a>
    </div>
</div>

<div id="navbar">
    <a href="#" onclick="showExercise1()" style=" font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">스트레칭</p></a>
    <a href="#" onclick="showExercise2()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">유산소 운동</p></a>
    <a href="#" onclick="showExercise3()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">근력 운동</p></a>
    <a href="#" onclick="showExercise4()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">명상</p></a>
</div>


<!DOCTYPE html>
<head>
</head>
<body>




<iframe style="margin-left: 220px; margin-top: 20px"
        width="700" height="440" src="https://www.youtube.com/embed/cdoRfSnUvgI" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/TgzznyMLcIw" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>



<iframe style="margin-left: 220px; margin-top: 120px"
        width="700" height="440" src="https://www.youtube.com/embed/g3GTULb68ok" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/4ajJh_prZy0" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe style="margin-left: 220px; margin-top: 120px"
        width="700" height="440" src="https://www.youtube.com/embed/W6_nE9BXuTs" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/WTVoxQUbcGo" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<iframe style="margin-left: 220px; margin-top: 120px"
        width="700" height="440" src="https://www.youtube.com/embed/pCyT7MWC_H4" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/kundPdh_sy8" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>








</body>




<script>

    function showExercise1() {
        window.location.href = "/page/showExercise1";
    }

    function showExercise2() {
        window.location.href = "/page/showExercise2";
    }

    function showExercise3() {
        window.location.href = "/page/showExercise3";
    }
    function showExercise3() {
        window.location.href = "/page/showExercise4";
    }



</script>

</body>
</html>

