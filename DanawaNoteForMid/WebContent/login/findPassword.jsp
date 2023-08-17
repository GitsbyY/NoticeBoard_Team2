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
html, body {
	    position: relative;
	    margin: auto;
	}
body{
	background-color:#f5f5f5;
}

#header {
    padding: 16px;
    background-color: #ffffff;
    width: 568px; /* Set header width to match body width */
    margin: 0 auto; /* Center the header within the body */
}
#bodyEntire {
    width: 600px;
     	height:930px; 
    margin: 0 auto;
    background-color: #ffffff;
    padding-top: 20px; /* Add padding to make space for the header */
}

#findIdBtn {
    width: 50%; /* 버튼 너비를 50%로 설정하여 왼쪽과 오른쪽에 배치 */
    box-sizing: border-box; /* 내부 패딩과 테두리를 포함한 전체 너비 설정 */
    padding: 10px;
    float: left; /* 왼쪽으로 배치 */
    border-bottom: 2px solid gray;
}

#findPwdBtn {
    width: 50%; /* 버튼 너비를 50%로 설정하여 왼쪽과 오른쪽에 배치 */
    box-sizing: border-box; /* 내부 패딩과 테두리를 포함한 전체 너비 설정 */
    padding: 10px;
    float: left; /* 왼쪽으로 배치 */
    border-bottom: 2px solid #2027eb;
}

.findIdBtn1,
.findPwdBtn2 {
    width: 100%; /* 버튼 내부 요소가 전체 너비를 차지하도록 설정 */
    border: 0;
    outline: 0;
    background-color: white;
    text-align: center; /* 텍스트 중앙 정렬 */
}
.forgetId1 {
/* 	 margin-top:150px; */
	 text-align:left;
 	 margin-left:100px; 
	 
}
.forgetId2 {
	 text-align:left;
	 margin-left:100px;
}
.forgetEmail {
 	 text-align:left;
 	 margin-left:100px;
}
.btnEmailLog {
	width: 390px;
	height: 45px;
	margin:auto;
	margin:5px;
}
.btnOkLog{
	width:400px; 
	height:50px; 
	background-color: #2070eb;
	color: white;
	outline: none;
	border: none;
	border-radius: 3px;
}
.forgetPhoneFind{
	width:400px; 
	height:50px; 
	color:#2070eb;
	background-color:#ffffff;
	border-color:#2070eb;
	margin:5px; 
}
.ipinFind{
	width:400px; 
	height:50px;
	color:#2070eb;
	background-color:#ffffff;
	border-color:#2070eb;  
}
#insideInformation{
	float:left;
	margin-left:100px;
/* 	position: fixed; */
	margin-top:20px;
}
 #header { 
 	padding:16px; 
 	margin-top:20px; 
 	background-color: #ffffff;
 } 
 
.danawaImg{ /*다나와 이미지 */
	float:left;	
	width:128px;
	height:28px;
	margin-left:70px;
}
.clear {
    clear: both;
}

</style>	
</head>
   <jsp:include page="../Header.jsp"/>
<body>
   <div id="bodyEntire">

		<div id="findIdBtn">
			<button class="findIdBtn1" onclick="findIdBtn1Fnc()">
				<h2 style="color:gray">아이디 찾기</h2>
			</button>
		</div>
	    <div id="findPwdBtn">
			<button class="findPwdBtn2">
				<h2 style="color:#2027eb">비밀번호 찾기</h2>
			</button>
		</div>
		<div class="clear"></div> 
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