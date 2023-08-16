<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<script type="text/javascript">
		function findPwdBtn2Fnc() {
			window.open("findPassword.jsp","_self");
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
    border-bottom: 2px solid #2027eb;
}

#findPwdBtn {
    width: 50%; /* 버튼 너비를 50%로 설정하여 왼쪽과 오른쪽에 배치 */
    box-sizing: border-box; /* 내부 패딩과 테두리를 포함한 전체 너비 설정 */
    padding: 10px;
    float: left; /* 왼쪽으로 배치 */
    border-bottom: 2px solid gray;
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
/* #tailExplan { */
/* 	font-size: 9px; */
/*  	width: 430px;  */
/*  	height: 110px;  */
/*  	text-align: center;  */
/*  	margin-left: 84px;  */
/*  	margin-top: 50px;  */
/* 	position:absolute; */
/* 	bottom:0; */
/* } */

.clear {
    clear: both;
}

</style>
</head>
	<jsp:include page="/Header.jsp"/>
<body>
<div id="bodyEntire">

	<div id="findIdBtn">
		<button class="findIdBtn1" onclick="">
			<h2 style="color:#2027eb">아이디 찾기</h2>
		</button>
	</div>
	<div id="findPwdBtn">
		<button class="findPwdBtn2" onclick="findPwdBtn2Fnc()">
			<h2 style="color:gray;">비밀번호 찾기</h2>
		</button>
	</div>
	<div class="clear"></div> 
		<p class="forgetId1">다나와 아이디를 모르시나요?
			<br>등록된 인증 수단으로 아이디를 찾을 수 있습니다.</p>
	<div>
	<div>
		<p class="forgetEmail">
			<strong>내 정보에 등록된 인증 이메일로 찾기</strong>
		</p>
	</div>
	<div id="btnLog">
		<input class="btnEmailLog" type="text" placeholder="이메일 주소 입력" required>
	</div>
	<div>
		<input class="btnOkLog" type="submit" value="확인"
			onclick="">
	</div>
	<div>
	<details id="insideInformation">
		<summary style="color: gray; position:fixed;">다른 방법으로 찾기</summary>

		<p style="margin:40px;">본인인증을 완료한 아이디만 가능합니다</p>
		<div>
			<input class="forgetPhoneFind" type="button" value="본인 명의 휴대폰으로 찾기"
				onclick="">
		</div>
		<div>
			<input class="ipinFind" type="button" value="아이핀으로 찾기"
				onclick="">
		</div>
		<p>혹시 개명하셨나요?</p>
		<p>
			나이스평가정보 <a href="http://www.niceinfo.co.kr/etc/qna.nice">고객센터</a>에서
			개명신청 후 찾아보세요.
		</p>
	</details>

	</div>
		<jsp:include page="/Tail.jsp"/>
	</div>
</div>
</body>



</html>