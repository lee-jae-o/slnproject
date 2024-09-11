<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>게시판 글쓰기</title>
	<link rel="stylesheet" href="/css/table.css"/>
	<script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		let saveFilePath = "${saveFilePath}";
		let saveFileName = "${saveFileName}";

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

		// 공지사항 저장하기
		function doSubmit() {
			let f = document.getElementById("f");
			let formData = new FormData(f);

			if (f.title.value === "") {
				alert("제목을 입력하시기 바랍니다.");
				f.title.focus();
				return;
			}
			if (calBytes(f.title.value) > 200) {
				alert("최대 200바이트까지 입력 가능합니다.");
				f.title.focus();
				return;
			}
			if (f.contents.value === "") {
				alert("내용을 입력하시기 바랍니다.");
				f.contents.focus();
				return;
			}
			if (calBytes(f.contents.value) > 4000) {
				alert("최대 4000바이트까지 입력 가능합니다.");
				f.contents.focus();
				return;
			}

			let file = $("#uploadFile")[0].files[0];

			// 파일이 선택되었는지 확인 후 FormData에 추가
			if (file) {
				let ext = file.name.split('.').pop(); // 파일 확장자
				formData.append("ext", ext);
				formData.append("fileName", saveFileName);
				formData.append("filePath", saveFilePath);
				formData.append("uploadFile", file);
			}

			$.ajax({
				url: "/notice/noticeInsert",
				type: "post",
				dataType: "JSON",
				data: formData,
				contentType: false,
				processData: false,
				success: function (json) {
					alert(json.msg);
					location.href = "/notice/noticeList";
				},
				error: function (error) {
					console.error("양식 제출 중 오류 발생", error);
					alert("양식 제출 중 오류가 발생했습니다. 자세한 내용은 콘솔을 확인하세요.");
				}
			});
		}
	</script>

	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f5f5f5;
			margin: 0;
			padding: 0;
		}

		h2 {
			color: #333;
			text-align: center;
			padding: 20px;
		}

		hr {
			border: 1px solid #ddd;
			margin: 20px 0;
		}

		form {
			max-width: 800px;
			margin: 0 auto;
			background-color: #fff;
			padding: 20px;
			border-radius: 8px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		.divTable {
			display: table;
			width: 100%;
		}

		.divTableBody {
			display: table-row-group;
		}

		.divTableRow {
			display: table-row;
		}

		.divTableCell {
			display: table-cell;
			padding: 10px;
		}

		input[type="text"],
		textarea,
		input[type="file"] {
			width: 95%;
			padding: 8px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			border-radius: 4px;
		}

		input[type="button"] {
			background-color: #4caf50;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}

		input[type="button"]:hover {
			background-color: #45a049;
		}

		button[type="reset"] {
			background-color: #f44336;
			color: white;
			padding: 10px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			margin-left: 10px;
		}

		button[type="reset"]:hover {
			background-color: #d32f2f;
		}
	</style>
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
					<input type="text" name="title" maxlength="100"/>
				</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">내용
				</div>
				<div class="divTableCell">
					<textarea name="contents" style="height: 200px"></textarea>
				</div>
			</div>
			<div class="divTableRow">
				<div class="divTableCell">이미지 업로드</div>
				<div class="divTableCell">
					<input type="file" name="uploadFile" id="uploadFile" accept="image/*"/>
				</div>
			</div>
		</div>
	</div>
	<div>
		<input id="btnSend" type="button" value="등록"/>
		<button type="reset">다시 작성</button>
	</div>
</form>
</body>
</html>