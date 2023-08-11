<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더와 테일</title>
<script type="text/javascript">
	
</script>
<style>
body {
	width: 1903px;
	height: 930;
	background-color: #f5f5f5;
}

#bodyEntire {
	width: 600px;
	height: 930px;
	background-color: #ffffff;
	margin: auto;
}

#header {
	text-align: center;
	padding: 16px;
	margin-top: 20px;
}

.danawaImg { /*다나와 이미지 */
	float: left;
	width: 128px;
	height: 28px;
	margin-left: 70px;
}

#tailExplan {
	font-size: 9px;
 	width: 430px; 
 	height: 110px; 
 	text-align: center; 
 	margin-left: 84px; 
 	margin-top: 50px; 
	position:absolute;
	bottom:0;
}
</style>
</head>

<body>
	<div id="bodyEntire">
		<!-- body 전체 -->
		<div id="header" class="headerLogin">
			<img alt="다나와 이미지" src="./images/danawa1.jpg" class="danawaImg"
				onclick="loginScreenFnc()">
		</div>

		<footer>
			<div id="tailExplan">
				<p>
					Copyright © <strong>connectwave</strong> Co., Ltd. All Rights
					Reserved.
				</p>
			</div>
		</footer>
	</div>
</body>



</html>