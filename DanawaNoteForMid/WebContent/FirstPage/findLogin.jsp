<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기(거의 완성)</title>
<script type="text/javascript">
	function find_searchPwdFnc() { // 비밀번호 찾기
		window.open("findPassword.jsp", "_self");
	}
	function find_searchIdFnc() { // 아이디 찾기 
		window.open("findLogin.jsp", "_self");
	}
</script>
<style>
body {
	width: 1903px;
	height: 930px;
	background-color: #f5f5f5;
/* 	float: center; */
/* 	text-align: center; */
}

#bodyEntire {
	width: 600px;
	height: 930px;
	background-color: #ffffff;
	margin: auto;
}

.search_wrap {
	width: 440px;
	padding-top: 50px;
	margin: 0 auto;
	box-sizing: border-box;
}

.find_searchId { /*  아이디 찾기 */
	border-bottom: 1px solid #2027eb;
	border: 0;
	outline: white;
	cursor: pointer;
	width: 200px;
	text-align: center;
	color:#3263EB;
	background-color:#ffffff; 
}

.find_searchPwd { /*  비밀번호 찾기 */
	border-bottom: 1px solid gray;
	border: 0;
	outline: white;
	cursor: pointer;
	width: 200px;
	text-align: center;
	color: gray;
	background-color:#ffffff;
}

.userInfo_serachBar {
	width: 400px;
	height: 45px;
	border: 1px solid gray;
	border-radius: 4px;
	margin: 10px;
}

.search_button {
	width: 407px;
	height: 49px;
	border-radius: 4px;
	background-color:#3263EB;
	color: white;
	outline-color:#3263EB;
	border:0;
	margin-left:10px;
}

.forgetPhoneFind {
	width: 400px;
	height: 50px;
	color: #2070eb;
	background-color: #ffffff;
	border-color: #2070eb;
	margin: 5px;
	margin-left: 13px;
}

.explan_certified { /* 내부정보 */
	text-align: left;
	margin-left: 9px;
}

.myInfo_certified { /* 내 정보에 등록된 인증 이메일로 찾기 */
	text-align: left;
	margin-left: 9px;
}

.ipinFind {
	width: 400px;
	height: 50px;
	color: #2070eb;
	background-color: #ffffff;
	border-color: #2070eb;
	margin-left:13px;
}

#insideInformation {
	float: left;
	position: sticky; /* 화면 고정 */
	margin-top: 20px;
	top: 0;
}
</style>
</head>

<body>
	<div id="bodyEntire">
	<!-- header -->
		<jsp:include page="../Header.jsp" />
		
	<!-- main -->
		<div id="container">
			<div class="search_wrap">
				<div class="findSearchBar">
					<button class="find_searchId" onclick="find_searchIdFnc()">
						<h2>아이디 찾기</h2>
					</button>
					<button class="find_searchPwd" onclick="find_searchPwdFnc()">
						<h2>비밀번호 찾기</h2>
					</button>
				</div>
				<div class="explan_certified">
					<p>
						다나와 아이디를 모르시나요? <br>등록된 인증 수단으로 아이디를 찾을 수 있습니다.
					</p>
				</div>
				<h3 class="myInfo_certified">내 정보에 등록된 인증 이메일로 찾기</h3>
				<div id="searchBar_email">
					<input class="userInfo_serachBar" type="text"
						placeholder="이메일 주소 입력" required>
					<button class="search_button">
						<strong>확인</strong>
					</button>
				</div>
				<div>
					<!-- 내부정보 -->
					<details id="insideInformation">
						<summary class="info_search"> 
							다른 방법으로 찾기 
						</summary>

						<p style="margin: 12px; font-size:12px;">본인인증을 완료한 아이디만 가능합니다</p>
						<div>
							<input class="forgetPhoneFind" type="button"
								value="본인 명의 휴대폰으로 찾기">
						</div>
						<div>
							<input class="ipinFind" type="button" value="아이핀으로 찾기">
						</div>
						<p>혹시 개명하셨나요?</p>
						<p>
							나이스평가정보
						<a href="http://www.niceinfo.co.kr/etc/qna.nice">고객센터</a>
							에서 개명신청 후 찾아보세요.
						</p>
					</details>
				</div> <!-- search_wrap -->
			</div> <!-- container -->
			
			<!-- tail -->
			<jsp:include page="../Tail.jsp" />
		</div> <!-- bodyEntire -->
	</div>
</body>

</html>