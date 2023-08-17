<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
	
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
		
		#writeTitle {
			background-color: lightgray;
			border: 1px solid black;
			margin: auto;
			width: 570px;
			font-weight: bold;
		}
		
		#writerInfo {
			width: 585px;
			margin: auto;
		}
		
		#textareaDiv{
			width: 570px;
			margin: auto;
		}
		
		#userContent{
			width: 565px;
			height: 100px;
			resize: none;
 			overflow: scroll;
 			overflow-x: hidden;
		}
		
		#buttonDiv {
			width: 570px;
			margin: auto;
			text-align: center;
		}
		
		#name{
			width: 100px;
		}
		
		#password{
			width: 100px;
		}
		
		#email{
			width: 235px;
		}
		
		#title {
			width: 480px;
		}
		
		td:nth-child(1){
			text-align: center;
			width: 80px;
		}
		
		td:nth-child(2){
			width: 450px;
		}
		 
		table {
			margin: auto;
			border-collapse: collapse;
		}
		
		table tr td{
			border-bottom: 1px solid black;
		}
		
	</style>
	<script type="text/javascript">
		var title;
		var userContent;
		var form;
		var pwdCheck;
		var titleCheck;
		var userContentCheck;
		var blankCheck;
		
		var isValidPwd = false;
		var isValidUserContent = false;
		var isValidTitle = false;
		
		window.onload = function () {
			form = document.boardWrite;
			
			pwdCheck = /^(?=.*[a-zA-Z!@#$%^*+=-]).{4,20}$/;
			titleCheck = /^(?:[\x00-\x7F가-힣]){1,30}$/;
			userContentCheck = /^(?:[\x00-\x7F가-힣]){1,100}$/;
			blankCheck = /^\S*$/;
		}
		
		function pwdCheckFnc() {
			var pwd = document.getElementById("password");
			
			if(pwd.value.length == 0){
// 				alert("패스워드를 입력해주세요");
// 				setTimeout(function(){pwd.focus();}, 1);
				return;
			}
			if(!blankCheck.test(pwd.value)){
// 				alert("공백불가");
// 				setTimeout(function(){pwd.focus();}, 1);
				return;
			}
			if(!pwdCheck.test(pwd.value)){
// 				alert("4자이상 20자 이하로 입력해주세요");
// 				setTimeout(function(){pwd.focus();}, 1);
				return;
			}
			isValidPwd = true;
// 			writeFnc();
		}
		
		function titleCheckFnc() {
			var title = document.getElementById("title").value;
			
			if(title.length == 0){
// 				alert("제목을 입력해주세요");
// 				setTimeout(function(){title.focus();}, 1);
				return;
			}
			if(title.charAt() == " "){
// 				alert("첫 글자는 공백이 안됩니다");
// 				setTimeout(function(){title.focus();}, 1);
				return;
			}
			if(!titleCheck.test(title)){
// 				alert("30자 이내로 입력해주세요");
// 				setTimeout(function(){title.focus();}, 1);
				return;
			}
			isValidTitle = true;
// 			writeFnc();
		}
		
		function userContentCheckFnc() {
			var userContent = document.getElementById("userContent").value;
			
			if(!userContentCheck.test(userContent)){
// 				alert("100자 이내로 입력해주세요");
// 				setTimeout(function(){userContent.focus();}, 1);
				return;
			}
			isValidUserContent = true;
// 			writeFnc();
		}
		
		function writeFnc() {
			var writeBtn = document.getElementById("writeBtn");
			
			if(isValidPwd == false){
				alert("비밀번호를 다시 확인해주세요");
				return;
			}
			if(isValidTitle == false){
				alert("제목을 다시 확인해주세요");
				return;
			}
			if(isValidUserContent == false){
				alert("내용을 다시 확인해주세요");
				return;
			}
			if(isValidPwd && isValidTitle && isValidUserContent){
				form.submit();
			}
		}
		
	</script>
</head>

<body>
	<form action="./write" name="boardWrite" method="post">
		<div id="wrap">
		<jsp:include page='../Header.jsp'/>
		<div id="writeTitle">&nbsp;∷ 글쓰기 ∷</div>
		
		<div id="writerInfo">
			<table id="utable">
				<tr>
					<td>이 름</td>
					<td>
						<input type="text" name="name" id="name" 
						value="${sessionScope.member.userNickname}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td>
						<input type="password" name="password" id="password" onblur="pwdCheckFnc()">
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						<input type="text" name="email" id="email" value="${sessionScope.member.userEmail}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<td>제 목</td>
					<td><input type="text" name="title" id="title" onblur="titleCheckFnc()"></td>
				</tr>
			</table>
		</div>
		
		<br>
		
		<div id="textareaDiv">
			<textarea name="content" id="userContent" onblur="userContentCheckFnc()"></textarea>
		</div>
		
		<br>
		
		<div id="buttonDiv">
			<input type="button" value="글쓰기" id="writeBtn" onclick="writeFnc()">
			<a href="./list"><input type="button" value="목록" id="listBtn"></a>
		</div>
		
		</div> <!-- wrap -->
	</form>
</body>

</html>