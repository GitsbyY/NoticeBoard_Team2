<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(거의 완성)다나와 홈페이지</title>

<script type="text/javascript">
	function loginScreenFnc() { // 이미지 클릭하면 로그인 화면으로 이동
		window.open("LoginForm.jsp","_self");		
	}
// 	function moveloginfnc() { // 로그인 버튼
// 		window.open("","_self");
// 	}
	function findLogFormFnc() { // 아이디 찾기 
		window.open("findLogin.jsp","_self");
	}
	function findPasswordFnc() { // 비밀번호 찾기
		window.open("findPassword.jsp","_self");
	}
	function newMemberShipFormFnc() { // 회원가입
// 		window.open("","_self");
	}
	function partnerManagerFnc() {
		window.open("partnerManager.jsp","_self");		
	} 
	function generalMembershipFnc() { // 일반 회원가입
		window.open("LoginForm.jsp","_self");		
	}
</script>
<style>
*{
	font-family: "Malgun Gothic","맑은 고딕", "Apple SD Gothic Neo";
}
body{
	width:1903px;
	height:930;
	background-color:#f5f5f5;
}
#bodyEntire {
	width:600px;
	height:930px;
	background-color:#ffffff;
	margin:0 auto;
/* 	text-align: center; */
}
.notLogin{
	border:1px solid gray;
	float:right;
	margin-right:70px;
	padding:0 8px;
	margin-top:9px;
}
#checkboxLogin { /* 체크박스 */
	padding-top:62px;
	text-align:center;
}

.logMaintain {
	text-align: center;
	margin-left:30px;
}
.members{
	margin-left:70px;
}

#formId { /* 로그인,비번 창*/
	width:441px;
	height:50px;
	margin-left: 70px;
	padding: 10px 80px 10px 21px;
}
.logMaintain{
	margin-left:3px;
	margin-right:39px;
}
#findLog { /* 찾기 */
	padding: 10px;
	text-align:center;
}
a{ /* 아이디 찾기 ,비번 찾기,회원가입 */
	font-size:13px;
	color:#666666;
	text-decoration: none;
}
#fontSize{ /* 이미지 아래 폰트 사이즈 */
	font-size: 13px;
 	margin-left:80px; 
}
#boxSize1{
	text-align:center;
	float:left;
	margin-left:50px;
}
#boxSize2{
	text-align:center;
	float:left;
	margin-left:10px;
}
#boxSize3{
	text-align:center;
	float:left;
	margin-left:10px;
}
#boxSize4{
	text-align:center;
	float:left;
	margin-left:10px;
}

#loginForm{
	text-align:center;
	width:600px;
	hegiht:146px;
	border-radius:30px;
}
.input_wrap1 input{
	width:440px;
	height:29px;
	margin:5px;
}
input:focus{
	outline: 1px solid blue;
}
.input_wrap2 input{
	width:440px;
	height:29px;
	margin:5px;
}
.input_wrap3 input{
	width:462px;
	height:50px;
	margin:5px;
	background-color:#2070eb;
	border-color:#2070eb;
}
#bannerEvent { /*광고배너*/
	width:200px;
	margin-top:29px;
}
#tailExplan{
	font-size:9px;
	width:430px;
	height:110px;
 	text-align:center; 
	margin-left:84px;
	margin-top:50px;
	position:absolute;
	bottom:0;
}
</style>
</head>

<body>
	<div id="bodyEntire"> <!-- body 전체 -->
	<jsp:include page="../Header.jsp"/>
		<div>
			<span><a href="https://www.naver.com/" class="notLogin">
				비로그인 주문조회
			</a></span>
		</div>
		<!-- 선택란 -->
		
		<div id="checkboxLogin">
			<label class="logMaintain">
				<input type="checkbox" value="">로그인 상태 유지
			</label>
			<label class="members">				
				<input type="radio" value="" onclick="generalMembershipFnc()">일반회원
			 	<input type="radio" value="협력관리자로그인 페이지로 이동" onclick="partnerManagerFnc()">협력사관리자
			</label>
		</div>
		<!-- 로그인  -->
		<form id="loginForm">
			<div class="input_wrap1">  <!--  337*29 --> 
				<input type="text" placeholder="아이디/인증 이메일" required
					style="padding:10px">
			</div>	
<!-- 			 서치바 안에 저장 버튼 <input type="button" value="저장">   -->
			<div class="input_wrap2">
				<input type="password" placeholder="비밀번호" required
					style="padding:10px">
			</div>
			<div class="input_wrap3">
				<input type="submit" value="로그인" target="_blank;" onclick="moveLoginFnc()">
			</div>					
		</form>
			<!-- 아이디,비번,회원가입 -->
			<div id="findLog">
				<a href="findLogin.jsp">아이디 찾기 | </a>
				<a href="findPassword.jsp">비밀번호 찾기 | </a>
				<a href="https://auth.danawa.com/joinStep1?url=https%3A%2F%2Fwww.danawa.com%2F
				%3Fsrc%3Dadwords%26kw%3DGA0000020%26utm_source%3Dgoogle%26utm_medium%3Dcpc
				%26utm_campaign%3Dkeyword%26gad%3D1%26gclid%3DEAIaIQobChMI9sr23e3QgAMVGdQWBR2h3A5eEAAYASAAEgKFbvD_BwE"
					onclick="">회원가입</a>
			</div>
			<!-- 이미지 4개   -->
		<div id="fontSize">
			<div id="boxSize1">
				<span><img alt="네이버" src="../img/naverlogo.jpg"
					style="width: 68px; height: 68px;">
				<br>네이버</span>
			</div>
			<div id="boxSize2">
				<span><img alt="카카오" src="../img/kakaologo.jpg"
					style="width: 68px; height: 68px;">
				<br>카카오 로그인</span>
			</div>
			<div id="boxSize3">
				<span><img alt="페이스북" src="../img/facebook.png"
					style="width: 68px; height: 68px;">
				<br>페이스북 로그인</span>
			</div>
			<div id="boxSize4">
				<span><img alt="구글" src="../img/enurilogo.jpg"
					style="width: 68px; height: 68px;">
				<br>에누리 로그인</span>
			</div>
			
			<div id="bannerEvent">
				<a href="https://www.google.com/webhp?hl=ko&sa=X
				&ved=0ahUKEwiHrv-gkdGAAxXJ-zgGHefDBK0QPAgI">
				<img alt="광고 배너" src="../img/banner.png" 
					style="width:400px; height:80px; margin:14px;" onclick="">
				</a>	
			</div>
		</div>
			<!-- footer -->
			<jsp:include page="../Tail.jsp" />
		</div><!-- bodyEntire -->
</body>



</html>