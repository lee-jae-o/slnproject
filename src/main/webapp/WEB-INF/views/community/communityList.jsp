<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="project.sln.util.CmmUtil" %>
<%@ page import="project.sln.dto.CommunityDTO" %>
<%
    // NoticeController 함수에서 model 객체에 저장된 값 불러오기
    List<CommunityDTO> rList = (List<CommunityDTO>) request.getAttribute("rList");
%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>커뮤니티 리스트</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script type="text/javascript">

        //상세보기 이동
        function doDetail(seq) {
            location.href = "/community/communityInfo?cSeq=" + seq;
        }

    </script>
</head>
<body>
<h2>만남의 광장</h2>
<hr/>
<br/>
<div class="divTable minimalistBlack">
    <div class="divTableHeading">
        <div class="divTableRow">
            <div class="divTableHead">순번</div>
            <div class="divTableHead">이미지</div>
            <div class="divTableHead">제목</div>
            <div class="divTableHead">조회수</div>
            <div class="divTableHead">등록자</div>

        </div>
    </div>
    <div class="divTableBody">
        <%
            for (CommunityDTO dto : rList) {
        %>
        <div class="divTableRow">
<%--            <%--%>
<%--                if (CmmUtil.nvl(dto.getNoticeYn()).equals("Y")) { //공지글이라면, [공지]표시--%>
<%--                    out.print("<div class=\"divTableCell\">공지</div>");--%>

<%--                } else { //공지글이 아니라면, 글번호 보여주기--%>
<%--                    out.print("<div class=\"divTableCell\">" + CmmUtil.nvl(dto.getNoticeSeq()) + "</div>");--%>

<%--                }--%>
<%--            %>--%>
            <div class="divTableCell"
                 onclick="doDetail('<%=CmmUtil.nvl(dto.getSeq())%>')"><%=CmmUtil.nvl(dto.getTitle())%>
            </div>

            <div class="divTableCell"><%= dto.getReadCnt() %>
            </div>

            <div class="divTableCell"><%=CmmUtil.nvl(dto.getUser_Id())%>
            </div>

        </div>
        <%
            }
        %>
    </div>
</div>
<a href="/community/communityReg">글쓰기</a>
</body>
</html>
