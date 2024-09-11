<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판 글쓰기</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">

        // HTML로딩이 완료되고, 실행됨
        $(document).ready(function () {
            // 버튼 클릭했을때, 발생되는 이벤트 생성함(onclick 이벤트와 동일함)
            $("#btnSend").on("click", function () {
                doSubmit(); // 공지사항 등록하기 실행
            })
        })

        //글자 길이 바이트 단위로 체크하기(바이트값 전달)
        function calBytes(str) {
            let tcount = 0;
            let tmpStr = String(str);
            let strCnt = tmpStr.length;
            let onechar;
            for (let i = 0; i < strCnt; i++) {
                onechar = tmpStr.charAt(i);
                if (escape(onechar).length > 4) {
                    tcount += 2;
                } else {
                    tcount += 1;
                }
            }
            return tcount;
        }


        function doSubmit() {

            let f = document.getElementById("f");

            if (f.title.value === "") {
                alert("제목을 입력하시기 바랍니다.");
                f.title.focus();
                return;
            }
            if (calBytes(f.title.value) > 200) {
                alert("최대 200Bytes까지 입력 가능합니다.");
                f.title.focus();
                return;
            }
            // let noticeCheck = false; //체크 여부 확인 변수
            // for (let i = 0; i < f.noticeYn.length; i++) {
            //     if (f.noticeYn[i].checked) {
            //         noticeCheck = true;
            //         break;
            //     }
            // }
            // if (noticeCheck === false) {
            //     alert("공지글 여부를 선택하시기 바랍니다.");
            //     f.noticeYn[0].focus();
            //     return;
            // }
            if (f.contents.value === "") {
                alert("내용을 입력하시기 바랍니다.");
                f.contents.focus();
                return;
            }
            if (calBytes(f.contents.value) > 4000) {
                alert("최대 4000Bytes까지 입력 가능합니다.");
                f.contents.focus();
                return;
            }

            // Ajax 호출해서 글 등록하기
            $.ajax({
                    url: "/community/communityReg",
                    type: "post",
                    dataType: "JSON",
                    data: $("#f").serialize(),
                    success: function (json) {
                        alert(json.msg);
                        location.href = "/community/communityList";
                    }
                }
            )
        }
    </script>
</head>
<body>
<h2>커뮤니티 글 등록하기</h2>
<hr/>
<br/>
<form name="f" id="f">
    <div class="divTable minimalistBlack">
        <div class="divTableBody">
            <div class="divTableRow">
                <div class="divTableCell">제목
                </div>
                <div class="divTableCell">
                    <input type="text" name="title" maxlength="100" style="width: 95%"/>
                </div>
            </div>





            <div class="divTableRow">
                <div class="divTableCell">이미지 업로드</div>
                <div class="divTableCell">
                    <input type="file" name="imageUpload" id="imageUpload" accept="image/*"/>
                </div>
            </div>
<%--            <div class="divTableRow">--%>
<%--                <div class="divTableCell">공지글 여부--%>
<%--                </div>--%>
<%--                <div class="divTableCell">--%>
<%--                    예<input type="radio" name="noticeYn" value="Y"/>--%>
<%--                    아니오<input type="radio" name="noticeYn" value="N"/>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="divTableRow">--%>
<%--                <div class="divTableCell">조회수--%>
<%--                </div>--%>
<%--                <div class="divTableCell">--%>
<%--                </div>--%>
<%--            </div>--%>

            <div class="divTableRow">
                <div class="divTableCell">조회수
                </div>
                <div class="divTableCell">
                    <input type="text" name="readCnt" value="0" />
                </div>
            </div>






            <div class="divTableRow">
                <div class="divTableCell">내용
                </div>
                <div class="divTableCell">
                    <textarea name="content" style="width: 95%; height: 400px"></textarea>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button id="btnSend" type="button">등록</button>
        <button type="reset">다시 작성</button>
    </div>
</form>
</body>
</html>