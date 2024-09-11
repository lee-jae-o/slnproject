<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="project.sln.dto.NoticeDTO" %>
<%@ page import="project.sln.util.CmmUtil" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<NoticeDTO> rList = (List<NoticeDTO>) request.getAttribute("rList");
    String userId = (String) session.getAttribute("SS_USER_ID");
    List<NoticeDTO> top5List = new ArrayList<>(rList);
    top5List.sort((a, b) -> Integer.compare(Integer.parseInt(b.getReadCnt()), Integer.parseInt(a.getReadCnt())));
    rList.sort((a, b) -> b.getRegDt().compareTo(a.getRegDt()));

%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>공지 리스트</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script type="text/javascript">
        function doDetail(seq) {
            location.href = "/notice/noticeInfo?nSeq=" + seq;
        }

        function checkLoginForWrite() {
            <% if (userId == null || userId.trim().isEmpty()) { %>
            alert("로그인 후 사용하세요.");
            location.href = "/user/login";
            <% } else { %>
            location.href = "/notice/noticeReg";
            <% } %>
        }

        function openRankingDropdown() {
            document.getElementById("rankingDropdown").classList.toggle("show");
        }

        function viewNoticeDetail(seq) {
            doDetail(seq);
            closeRankingDropdown();
        }

        function closeRankingDropdown() {
            document.getElementById("rankingDropdown").classList.remove("show");
        }
    </script>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            background-color: #4CAF50;
            color: white;
            padding: 30px;
            margin: 0;
            font-size: 30px;
        }

        hr {
            border: none;
            height: 2px;
            background-color: #ddd;
            margin: 10px 0;
        }

        .dropdown {
            display: inline-block;
        }

        .dropbtn {
            background-color: #3498db;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            border-radius: 8px;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .show {
            display: block;
        }

        .divTable {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        .divTableHeading, .divTableBody, .divTableRow {
            border: 1px solid #ddd;
        }

        .divTableHeading {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        .divTableCell, .divTableHead {
            padding: 10px;
            text-align: left;
        }

        .divTableCell:hover {
            background-color: #f5f5f5;
            cursor: pointer;
        }

        .divTableRow:nth-child(even) {
            background-color: #f9f9f9;
        }

        a1 {
            display: block;
            margin: 20px auto;
            padding: 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            width: 16%;
            cursor: pointer;
            border-radius: 8px;
            font-family: Arial;
            font-weight: bold;
            font-size: 24px;

        }

        a1:hover {
            background-color: #002752;
        }


        /*a {*/
        /*    display: block;*/
        /*    margin: 20px auto;*/
        /*    padding: 15px;*/
        /*    background-color: #3498db;*/
        /*    color: white;*/
        /*    text-decoration: none;*/
        /*    width: 50px;*/
        /*    cursor: pointer;*/

        /*}*/
        a {
            display: block;
            margin: 30px auto;
            padding: 10px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            width: 25%;
            width: fit-content;
            cursor: pointer;
            border-radius: 4px;
        }

        a:hover {
            background-color: #002752;
        }

        ul {
            list-style: none;
            margin-left: 295px;
            margin-top: 160px;
        }

        ul li {
            display: inline-block;
            margin-right: 10px;

        }




    </style>

</head>
<body>
<h2>따뜻한 노인 정</h2>
<div>
    <a href="/page/test" style="color: white; text-decoration: none; font-size: 21px;">메인화면</a>
</div>

<hr/>
<br/>
<div class="dropdown">
    <button class="dropbtn" onclick="openRankingDropdown()">순위보기</button>
    <div class="dropdown-content" id="rankingDropdown">
        <%
            int topCount = Math.min(top5List.size(), 5);
            for (int i = 0; i < topCount; i++) {
                NoticeDTO dto = top5List.get(i);
        %>
        <a href="#" onclick="viewNoticeDetail('<%=CmmUtil.nvl(dto.getNoticeSeq())%>')">
            <%= (i + 1) + ". " + CmmUtil.nvl(dto.getTitle()) %> - <%= CmmUtil.nvl(dto.getReadCnt()) %> 조회수
        </a>
        <%
            }
        %>
    </div>
</div>
<br/>
<div class="divTable">
    <div class="divTableHeading">
        <div class="divTableRow">
            <div class="divTableHead">제목</div>
            <div class="divTableHead">조회수</div>
            <div class="divTableHead">등록자</div>
            <div class="divTableHead">등록일</div>
        </div>
    </div>
    <div class="divTableBody">
        <%
            for (NoticeDTO dto : rList) {
        %>
        <div class="divTableRow">
            <div class="divTableCell" style="cursor: pointer"
                 onclick="doDetail('<%=CmmUtil.nvl(dto.getNoticeSeq())%>')"><%=CmmUtil.nvl(dto.getTitle())%>
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(dto.getReadCnt())%>
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(dto.getUserName())%>
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(dto.getRegDt())%>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>
<a1 href="javascript:checkLoginForWrite()">글쓰기</a1>
</body>

<div style="display: flex; margin-left: 30%;">
    <div class="pagination">

        <ul class="pagination pagination-primary" id="pagination">
            <li class="page-item">
                <a class="page-link" href="/notice/noticeList?page=1">&laquo;</a>
            </li>
            <!-- 이전 페이지로 이동하는 링크 -->
            <c:if test="${currentPage > 1}">
                <li class="page-item">
                    <a class="page-link" href="/notice/noticeList?page=${currentPage - 1}">&lt;</a>
                </li>
            </c:if>
            <!-- 현재 페이지 주변에 페이지 번호 링크 표시 -->
            <c:forEach var="pageNumber" begin="${currentPage}" end="${currentPage + 9}">
                <c:if test="${pageNumber <= totalPages}">
                    <li class="page-item ${pageNumber == currentPage ? 'active' : ''}">
                        <a class="page-link" href="/notice/noticeList?page=${pageNumber}">
                            <c:out value="${pageNumber}"/>
                        </a>
                    </li>
                </c:if>
            </c:forEach>
            <!-- 다음 페이지로 이동하는 링크 -->
            <c:if test="${currentPage < totalPages}">
                <li class="page-item" >
                    <a class="page-link" href="/notice/noticeList?page=${currentPage + 1}">&gt;</a>
                </li>
            </c:if>
            <li class="page-item">
                <a class="page-link" href="/notice/noticeList?page=${totalPages}">&raquo;</a>
            </li>
        </ul>
    </div>

</div>
</html>

