<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="project.sln.dto.NoticeDTO" %>
<%@ page import="project.sln.util.CmmUtil" %>
<%@ page import="project.sln.dto.CommunityDTO" %>
<%
    CommunityDTO rDTO = (CommunityDTO) request.getAttribute("rDTO");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판 글보기</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
    <script>

        const session_user_id = "<%=CmmUtil.nvl((String)session.getAttribute("USER_ID"))%>";


        const user_id = "<%=CmmUtil.nvl(rDTO.getUser_Id())%>";


        const nSeq = "<%=CmmUtil.nvl(rDTO.getSeq())%>";


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
            $("#btnDelete").on("click", function () {
                location.href = "/community/communityList"; // 공지사항 리스트 이동
            })
        })

        //수정하기
        function doEdit() {
            if (session_user_id === user_id) {
                location.href = "/community/communityEditInfo?cSeq=" + nSeq;

            } else if (session_user_id === "") {
                alert("로그인 하시길 바랍니다.");

            } else {
                alert("본인이 작성한 글만 수정 가능합니다.");

            }
        }

        //삭제하기
        function doDelete() {
            if (session_user_id === user_id) {
                if (confirm("작성한 글을 삭제하시겠습니까?")) {

                    // Ajax 호출해서 글 삭제하기
                    $.ajax({
                            url: "/community/communityDelete",
                            type: "post",
                            dataType: "JSON",
                            data: {"cSeq": cSeq},
                            success:
                                function (json) {
                                    alert(json.msg);
                                    location.href = "/community/communityList";
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


        $(document).ready(function () {
            $("#imageUpload").on("change", function () {
                readURL(this);
            });

            $("#btnEdit").on("click", function () {
                // 수정 버튼 클릭 시 이미지 업로드 필드의 값을 변경한 이미지로 업데이트할 수 있도록 코드 추가
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#previewImage').attr('src', e.target.result).show();
                };

                reader.readAsDataURL(input.files[0]);
            }

            // 수정 버튼 클릭 시 이미지 업로드 필드의 값을 변경한 이미지로 업데이트할 수 있도록 함수 추가
        }











    </script>
</head>
<body>
<h2>공지사항 상세보기</h2>
<hr/>
<br/>
<div class="divTable minimalistBlack">
    <div class="divTableBody">


        <div class="divTableRow">
            <div class="divTableCell">이미지 업로드</div>
            <div class="divTableCell">
                <input type="file" id="imageUpload" name="imageUpload" accept="image/*" />
                <img id="previewImage" src="" alt="이미지 미리보기" style="max-width: 300px; max-height: 300px; display: none;" />
            </div>
        </div>


        <div class="divTableRow">
            <div class="divTableCell">제목
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getTitle())%>
            </div>
        </div>
<%--        <div class="divTableRow">--%>
<%--            <div class="divTableCell">공지글 여부--%>
<%--            </div>--%>
<%--            <div class="divTableCell">--%>
<%--                예<input type="radio" name="noticeYn"--%>
<%--                        value="Y" <%=CmmUtil.checked(CmmUtil.nvl(rDTO.getNoticeYn()), "Y") %> />--%>
<%--                아니오<input type="radio" name="noticeYn"--%>
<%--                          value="N" <%=CmmUtil.checked(CmmUtil.nvl(rDTO.getNoticeYn()), "N") %>/>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="divTableRow">--%>
<%--            <div class="divTableCell">작성일--%>
<%--            </div>--%>
<%--            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getRegDt())%>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="divTableRow">
            <div class="divTableCell">조회수
            </div>
            <div class="divTableCell"><%= rDTO.getReadCnt() %>
            </div>
        </div>
        <div class="divTableRow">
            <div class="divTableCell">내용
            </div>
            <div class="divTableCell"><%=CmmUtil.nvl(rDTO.getContent())%>
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

