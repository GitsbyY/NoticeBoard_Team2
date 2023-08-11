<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 - 수정하기</title>
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
		#titleArea{
			width: 570px;
			height:100px;
			margin: auto;
		}
		#textArea{
			width: 570px;
			height: 200px;
			margin: auto;
		}
		#content{
			width: 570px;
			height: 100px;
		}
		#update{
			margin-left: 220px;
		}
	</style>
	<script type="text/javascript">
		
	</script>
</head>

<body>

	<form action="">
		<div id="wrap">
			<div id="titleArea">
				제목
				<input type="text" value="값 가져오기" name="title" id="title">
			</div>
			<div id="textArea">
				<textarea name="content" id="content"></textarea>
			</div>
			<div id="btnArea">
				<input type="button" name="update" value="수정하기" id="update">
				<input type="button" name="cancel" value="취소">
			</div>
		</div>
	</form>
	
</body>

</html>