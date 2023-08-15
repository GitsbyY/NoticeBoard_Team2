<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>비밀번호 찾기</title>
   <script type="text/javascript">
   		function findIdBtn1Fnc() {
   			window.open("findLogin.jsp","_self");
   		}
   		function danawaImg1Fnc() {
   			window.open("loginForm.jsp","_self");
   		}
	</script>
	<style>
body{
	width:1903px;
	height:930;
	background-color:#f5f5f5;
	float: center;
	text-align: center;
}
#bodyEntire {
	width:600px;
	height:930px;
	margin:auto;
	background-color:#ffffff;
}
.danawaImg{
	width: 128px;
	height: 28px;
	float:left;
	margin-top:60px;
}
#findId1Btn { /*  아이디 찾기 */
	border-bottom: 2px solid #b3b3b3;
	width:200px;
	margin-top:50px;
	color: 2070eb;
	padding: 10px;
	float:left;
	margin-left:-79px;
}
#findPwd2Btn { /*  비밀번호 찾기 */
	border-bottom: 2px solid #2027eb;
	width:200px;
	margin-top:50px;
	padding: 10px;
	float:right;
	margin-right:100px;
}
.findIdBtn1 {
	border: 0;
	outline: 0;
	background-color: white;
	margin-left:70px;
}
.findPwdBtn2 { 
	border-bottom: 2px solid gray; 
	border: 0; 
	outline: 0; 
	background-color: white; 
	color: gray; 
} 
.forgetEmail {
 	 text-align:center;
}
.btnEmailLog {
	width: 300px;
	height: 39px;
	margin:auto;
	margin:5px;
}
.btnOkLog{
	width:300px; 
	height:39px; 
	background-color: #2070eb;
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
   <jsp:include page="./Header.jsp"/>
	   <div id="header" class="danawaImg" onclick="danawaImg1Fnc()">
		</div>
		<div id="findId1Btn">
			<button class="findIdBtn1" onclick="findIdBtn1Fnc()">
				<h2 style="color:gray">아이디 찾기</h2>
			</button>
		</div>
	    <div id="findPwd2Btn">
			<button class="findPwdBtn2">
				<h2 style="color:#2027eb">비밀번호 찾기</h2>
			</button>
		</div>
		<div>
			<p class="forgetEmail">
				<strong>내 정보에 등록된 인증 이메일로 찾기</strong>
			</p>
		</div>
		<div id="btnLog">
			<input class="btnEmailLog" type="text" placeholder="이메일 주소 입력" required>
		</div>
		<div>
			<input class="btnOkLog" type="submit" value="확인" target="_blank;"
				onclick="">
		</div>
		<footer>
			<div id="tailExplan">
				<p>Copyright ©
				<strong>connectwave</strong> Co., Ltd. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
</body>



</html>