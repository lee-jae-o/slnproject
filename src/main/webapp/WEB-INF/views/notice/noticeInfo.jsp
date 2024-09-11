<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="project.sln.dto.NoticeDTO" %>
<%@ page import="project.sln.util.CmmUtil" %>
<%
    // NoticeController 함수에서 model 객체에 저장된 값 불러오기
    NoticeDTO rDTO = (NoticeDTO) request.getAttribute("rDTO");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판 글보기</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        h2 {
            color: #002752;
        }

        hr {
            border: 2px solid #0b2e13;
        }

        .divTable {
            display: table;
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            border-color: white;
        }

        .divTableBody {
            display: table-row-group;
        }

        .divTableRow {
            display: table-row;
            background-color: #fff;
        }

        .divTableCell, .divTableHead {
            display: table-cell;
            padding: 10px;
            border: 1px solid #e6e6e6;
        }

        .divTableHead {
            background-color: #4CAF50;
            color: white;
        }

        img {
            max-width: 100%;
            max-height: 100%;
            cursor: pointer;
        }

        button {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
            cursor: pointer;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
    <script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
    <script>
        // Controller에서 받은 세션에 저장된 값
        const session_user_id = "<%=CmmUtil.nvl((String)session.getAttribute("SS_USER_ID"))%>";

        // 공지사항 게시글 작성자 아이디
        const user_id = "<%=CmmUtil.nvl(rDTO.getUserId())%>";

        // 현재 글번호, 자바에서 받을 변수들은 자바스크립트 변수로 저장하면 편함
        const nSeq = "<%=CmmUtil.nvl(rDTO.getNoticeSeq())%>";

        function doDetail(filename, filepath, orgFileName) {
            location.href = "/notice/download?fileName=" + filename + "&filePath=" + filepath + "&orgFileName=" + orgFileName;
        }

        // HTML로딩이 완료되고, 실행됨
        $(document).ready(function () {
            // 버튼 클릭했을때, 발생되는 이벤트 생성함(onclick 이벤트와 동일함)
            $("#btnEdit").on("click", function () {
                doEdit(); // 공지사항 수정하기 실행
            })

            // 버튼 클릭했을때, 발생되는 이벤트 생성함(onclick 이벤트와 동일함)
            $("#btnDelete").on("click", function () {
                doDelete(); // 공지사항 수정하기 실행
            })

            // 버튼 클릭했을때, 발생되는 이벤트 생성함(onclick 이벤트와 동일함)
            $("#btnList").on("click", function () {
                location.href = "/notice/noticeList"; // 공지사항 리스트 이동
            })
        })

        // 수정하기
        function doEdit() {
            if (session_user_id === user_id) {
                location.href = "/notice/noticeEditInfo?nSeq=" + nSeq;

            } else if (session_user_id === "") {
                alert("로그인 하시길 바랍니다.");

            } else {
                alert("본인이 작성한 글만 수정 가능합니다.");

            }
        }

        // 삭제하기
        function doDelete() {
            if (session_user_id === user_id) {
                if (confirm("작성한 글을 삭제하시겠습니까?")) {

                    // Ajax 호출해서 글 삭제하기
                    $.ajax({
                            url: "/notice/noticeDelete",
                            type: "post", // 전송방식은 Post
                            dataType: "JSON", // 전송 결과는 JSON으로 받기
                            data: {"nSeq": nSeq}, // form 태그 내 input 등 객체를 자동으로 전송할 형태로 변경하기
                            success:
                                function (json) { // /notice/noticeDelete 호출이 성공했다면..
                                    alert(json.msg); // 메시지 띄우기
                                    location.href = "/notice/noticeList"; // 공지사항 리스트 이동
                                }
                        }
                    )
                }

            } else if (session_user_id === "") {
                alert("로그인 하시길 바랍니다.");

            } else {
                alert("본인이 작성한 글만 수정 가능합니다.");

            }
        }
    </script>
</head>
<body>
<h2>커뮤니티</h2>
<hr/>
<br/>
<div class="divTable minimalistBlack" >
    <div class="divTableBody">
        <div class="divTableRow">
            <div class="divTableCell divTableHead">제목
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getTitle())%>
            </div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell divTableHead">이미지</div>
            <div class="divTableCell">
                <img src="<%=CmmUtil.nvl(rDTO.getFileName())%>', '<%=CmmUtil.nvl(rDTO.getFilePath())%>', '<%=CmmUtil.nvl(rDTO.getOrgFileName())%>"
                     alt="이미지" onclick="doDetail('<%=CmmUtil.nvl(rDTO.getFileName())%>', '<%=CmmUtil.nvl(rDTO.getFilePath())%>', '<%=CmmUtil.nvl(rDTO.getOrgFileName())%>')">
            </div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell divTableHead">작성일
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getRegDt())%>
            </div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell divTableHead">조회수
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getReadCnt())%>
            </div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell divTableHead">내용
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getContents())%>
            </div>
        </div>
    </div>
</div>
<div>
    <button id="btnEdit" type="button">수정</button>
    <button id="btnDelete" type="button">삭제</button>
    <button id="btnList" type="button">목록</button>
</div>
</body>
</html>


