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
            height: 1680px;
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
    <a style="font-size: 35px; color: white;">채식</a>
    <div>
        <a href="/page/food" style="margin-left: 20px; color: white; text-decoration: none; font-size: 21px; margin-right: 18px">식단 페이지</a>
        <a href="/page/test" style="color: white; text-decoration: none; font-size: 21px">메인화면</a>
    </div>
</div>

<div id="navbar">
    <a href="#" onclick="showFood1()" style=" font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">채식</p></a>
    <a href="#" onclick="showFood2()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">단백질</p></a>
    <a href="#" onclick="showFood3()" style="margin-top: 23px; font-size:23px; font-weight: bold"><p style="margin-left: 13px; margin-top: 0px">간식</p></a>

</div>


<!DOCTYPE html>
<head>
</head>
<body>




<iframe style="margin-left: 220px; margin-top: 20px"
        width="700" height="440" src="https://www.youtube.com/embed/WZRJdRnK48w" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/wudOB4J7Oxs" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>



<iframe style="margin-left: 220px; margin-top: 120px"
        width="700" height="440" src="https://www.youtube.com/embed/mrnZ_oNzAzQ" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/AuFs9wuQ6x4" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe style="margin-left: 220px; margin-top: 120px"
        width="700" height="440" src="https://www.youtube.com/embed/MvJvus_fq-o" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe style="margin-top: 20px; margin-right: 20px; margin-left: 40px"
        width="700" height="440" src="https://www.youtube.com/embed/8Jg9Qoe7UsY" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>





</body>




<script>

    function showFood1() {
        window.location.href = "/page/showFood1";
    }

    function showFood2() {
        window.location.href = "/page/showFood2";
    }

    function showFood3() {
        window.location.href = "/page/showFood3";
    }




</script>

</body>
</html>

