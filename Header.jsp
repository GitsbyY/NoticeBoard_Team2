<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<script type="text/javascript">
	function loginHomeFnc() {
		window.open("LoginForm4.jsp","_self");
	}
</script>
<style>
	
	.headerLogin{ 
	 	width: 440px;
	 	padding: 100px 0px 0px;
	 	margin: 0px auto;
 	 	position:relative; 
	 	
	/*  	margin-top:px;  */
	 } 
	.danawaImg{ /*다나와 이미지 */
		width: 128px;
		height: 28px;
/*  		float:left;  */
		cursor: pointer;
	}
</style>
</head>

<body>
		<div id="header" class="headerLogin">
			<img alt="다나와 이미지" src="../images/danawa.jpg" class="danawaImg" onclick="loginHomeFnc()">
		</div>
</body>

</html>