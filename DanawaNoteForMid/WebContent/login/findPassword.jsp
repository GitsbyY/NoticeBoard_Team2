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
body {
    width: 100%; /* 전체 화면 너비 */
    height: 930px;
    background-color: #f5f5f5;
    text-align: center;
    margin: 0; /* 기본 마진 제거 */
    padding: 0; /* 기본 패딩 제거 */
}
#bodyEntire {
    width: 600px;
    height:930px;
    margin: 0 auto; /* 가운데 정렬 */
    background-color: #ffffff;
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
    padding: 8px; /* 여유 있는 패딩 추가 */
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