<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>협력사 로그인</title>

<script type="text/javascript">
	function partnerManagerFnc() { // 협력 관리자 가입
		window.open("PartnerManager.jsp", "_self");
	}
	function generalMembershipFnc() { // 일반 회원가입
		window.open("LoginForm.jsp", "_self");
	}
</script>
<style>
* {
	font-family: "Malgun Gothic", "맑은 고딕", "Apple SD Gothic Neo";
}

body {
	width: 1903px;
	height: 930;
	background-color: #f5f5f5;
}

#bodyEntire {
	width: 600px;
	height: 930px;
	background-color: #ffffff;
	margin: 0 auto;
}

.notLogin {
	border: 1px solid gray;
	float: right;
	margin-right: 70px;
	padding: 0 8px;
	margin-top: 9px;
}

#checkboxLogin { /* 체크박스 */
	padding-top: 45px;
	text-align:center;
}

.logMaintain {
	text-align: center;
	margin-left: 30px;
}

.members {
	margin-left: 70px;
}

#formId { /* 로그인,비번 창*/
	width: 441px;
	height: 50px;
	margin-left: 70px;
	padding: 10px 80px 10px 21px;
}

#findLog { /* 찾기 */
	padding: 10px;
	text-align: center;
}

a { /* 아이디 찾기 ,비번 찾기,회원가입 */
	font-size: 13px;
	color: #666666;
	text-decoration: none;
}

.logMaintain {
	margin-left: 3px;
	margin-right: 39px;
}

#loginForm {
	text-align: center;
	width: 600px;
	hegiht: 146px;
	border-radius: 30px;
}

.input_wrap1 input {
	width: 440px;
	height: 29px;
	margin: 5px;
}

.input_wrap2 input {
	width: 440px;
	height: 29px;
	margin: 5px;
}

.input_wrap3 input {
	width: 462px;
	height: 50px;
	margin: 5px;
	background-color: #2070eb;
	border-color: #2070eb;
	color:white;
}

#bannerEvent { /*광고배너*/
	width: 200px;
	margin-top: 11px;
	margin-left: 89px;
}

#tailExplan {
	font-size: 9px;
	width: 430px;
	height: 110px;
	text-align: center;
	margin-left: 84px;
	margin-top: 50px;
	position: absolute;
	bottom: 0;
}
</style>
</head>

<body>
		<!-- body 전체 -->
	<div id="bodyEntire">
		<jsp:include page="../Header.jsp" />
		
		<div id="container">
			<div class="search_wrap">
			<span><a href="https://www.naver.com/" class="notLogin">
				비로그인 주문조회 
			</a></span>
		</div>
		<!-- 선택란 -->
		<div id="checkboxLogin">
			<label class="logMaintain"> 
				<input type="checkbox">로그인 상태 유지
			</label> 
			<label class="members"> 
				<input type="radio" value=""
					onclick="generalMembershipFnc()">일반회원 
				<input type="radio" value="협력관리자로그인 페이지로 이동" 
					onclick="partnerManagerFnc()">협력사관리자
			</label>
		</div>
		<!-- 로그인  -->
		<form id="loginForm">
			<div class="input_wrap1">
				<!--  337*29 -->
				<input type="text" placeholder="아이디/인증 이메일" required
					style="padding: 10px">
			</div>
			<!-- 			 서치바 안에 저장 버튼 <input type="button" value="저장">   -->
			<div class="input_wrap2">
				<input type="password" placeholder="비밀번호" required
					style="padding: 10px">
			</div>
			<div class="input_wrap3">
				<input type="submit" value="로그인" onclick="moveLoginFnc()">
			</div>
		</form>
		<!-- 아이디,비번,회원가입 -->
		<div id="findLog">
			<a
				href="https://auth.danawa.com/searchId?url=https%3A%2F%2Fwww.danawa.com%2F"
				onclick="">아이디 찾기 | </a> <a
				href="https://auth.danawa.com/searchPwd?url=https%3A%2F%2Fwww.danawa.com%2F"
				onclick="">비밀번호 찾기 | </a> <a
				href="https://auth.danawa.com/joinStep1?url=https%3A%2F%2Fwww.danawa.com%2F
				%3Fsrc%3Dadwords%26kw%3DGA0000020%26utm_source%3Dgoogle%26utm_medium%3Dcpc
				%26utm_campaign%3Dkeyword%26gad%3D1%26gclid%3DEAIaIQobChMI9sr23e3QgAMVGdQWBR2h3A5eEAAYASAAEgKFbvD_BwE"
				onclick="">회원가입</a>
		</div>

		<div id="bannerEvent">
			<a
				href="https://www.google.com/webhp?hl=ko&sa=X
				&ved=0ahUKEwiHrv-gkdGAAxXJ-zgGHefDBK0QPAgI">
				<img alt="광고 배너" src="../images/banner.png"
				style="width: 400px; height: 80px; margin: 14px;" onclick="">
			</a>
		</div>
	</div> <!-- search_wrap -->
	
		<!-- footer -->
		<jsp:include page="../Tail.jsp" />
	</div> <!-- container -->
</body>

</html>