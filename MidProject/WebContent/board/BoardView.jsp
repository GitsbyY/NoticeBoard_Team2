<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 - ${boardList.postTitle}</title>
	
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
			background-color: red;
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
		
		#updateBtn {
			margin-left: 220px;
		}
		
		cancelBtn {
		}
		
	</style>
	<script type="text/javascript">
		
		
	</script>
</head>

<body>
	<form action="./view" name="boardWrite" method="get">
		<div id="wrap">
			<div id="title">${boardDto.postTitle}</div>
			<div id="addition">작성자 &nbsp;${boardDto.postWriter} | &nbsp;${boardDto.postDate} | &nbsp;조회수 &nbsp;${boardDto.postViewNo}</div>
			<div id="content">
				${boardDto.postContent}
			</div>
			<div id="btnArea">
				<input type="button" value="수정하기" id="updateBtn" name="updateBtn">
				<a href="./list"><input type="button" value="목록" id="cancelBtn"></a>
			</div>
		</div> <!-- wrap -->
	</form>
</body>

</html>