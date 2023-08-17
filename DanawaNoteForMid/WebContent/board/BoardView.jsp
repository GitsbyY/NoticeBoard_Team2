<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 - ${boardDto.postTitle}</title>
	
	<style type="text/css">
		body {
			background-color: #f5f5f5;
		}
		
		#wrap {
			width: 600px;
			height: 910px;
			background-color: white;
			margin: 0px auto;
		}
		
		#title {
			width: 570px;
			height: 100px;
			margin: auto;
			font-size: 30px;
		}
		
		#addition {
			margin-bottom: 30px;
		}
		
		#content {
			width: 570px;
			height: 200px;
		}
		
		#btnArea {
			width: 570px;
			margin: auto;
		}
		
		#pwdInput{
			margin-left: 110px;
		}
		
	</style>
	<script type="text/javascript">
		function listGoFnc() {
			location.href = "./list";
		}
		
		function updateFnc() {
			var form = document.boardWrite;
			var inputPwd = document.getElementById("pwdInput").value;
			var postPwd = "${boardDto.postPwd}";
			
			if(postPwd == inputPwd){
				form.submit();
			} else {
				alert("다시 입력해주세요");
			}
		}
		
		
	</script>
</head>

<body>
	<form action="./view" name="boardWrite" method="post">
		<div id="wrap">
		<jsp:include page='../Header.jsp'/>
			<div id="title">${boardDto.postTitle}</div>
			<div id="addition">작성자 &nbsp;${boardDto.postWriter} | &nbsp;${boardDto.postDate} | &nbsp;조회수 &nbsp;${boardDto.postViewNo}</div>
			<div id="content">
				${boardDto.postContent}
			</div>
			<div id="btnArea">
<!-- 				<input type="submit" value="수정하기" id="updateBtn"> -->
				<input name="no" value="${boardDto.postNo}" type="hidden">
				<input name="pwd" type="password" placeholder="비밀번호를 입력해주세요" id="pwdInput">
				<input type="button" value="수정하기" id="updateBtn" name="updateBtn" onclick="updateFnc()">
				<button type="button" id="cancelBtn" onclick="listGoFnc()">목록</button>
			</div>
		<jsp:include page='../Tail.jsp'/>
		</div> <!-- wrap -->
	</form>
</body>

</html>