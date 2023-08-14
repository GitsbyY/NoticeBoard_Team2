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
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" id="email"></td>
				</tr>
				<tr>
					<td>제 목</td>
					<td><input type="text" name="title" id="title"></td>
				</tr>
			</table>
		</div>
		
		<br>
		
		<div id="textareaDiv">
			<textarea name="content" id="userContent"></textarea>
		</div>
		
		<br>
		
		<div id="buttonDiv">
			<input type="submit" value="글쓰기" id="writeBtn">
			<a href="./list"><input type="button" value="목록" id="listBtn"></a>
		</div>
		
		<jsp:include page='../Tail.jsp'/>
		</div> <!-- wrap -->
		
	</form>
</body>

</html>