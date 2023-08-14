<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 확인 페이지(거의 완성)</title>
<script type="text/javascript">
	// 마이페이지에서 로그아웃을 클릭하면 로그아웃 화면 페이지로 이동
   function find_searchPwdFnc() { // 로그인화면으로 이동 (예) 
	   window.open("LoginForm4.jsp", "_self");
	}
	function find_searchIdFnc() { // (아니오) 
		window.open("LoginForm4.jsp", "_self");
	}
</script>

<style>
body{
	width:1903px;
	height:930px;
	background-color:#f5f5f5;
/* 	float: center; */
/* 	text-align: center; */
}
#bodyEntire {
	width:600px;
	height:930px;
	margin:auto;
	background-color:#ffffff;
}
.search_wrap{
    width: 440px;
    padding-top: 100px;
    margin: 0 auto;
    box-sizing: border-box;
}
.find_searchId { /* 예 */
	border-radius:10px;
	border:0;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:white;
 	background-color: #3263EB;
}     
.find_searchPwd { /* 아니오 */
	border-radius:10px;
	border:0;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:white;
 	background-color: #3263EB;
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
   		<jsp:include page="../Header.jsp"/>
   		
		<div id="container">
			<div class="search_wrap">
				<div class="findSearchBar"> <!--  id="findId1Btn"> -->
					<h1 style="margin-bottom:50px;">로그아웃을 하시겠습니까?</h1>
					<button class="find_searchId" onclick="find_searchIdFnc()">
						<h2>예</h2>
					</button>
					<button class="find_searchPwd" onclick="find_searchPwdFnc()">
						<h2>아니오</h2>
					</button>
				</div>
			</div> <!-- id="search_wrap" -->
		<jsp:include page="../Tail.jsp" />
		</div> <!-- id="container" -->
		
	</div>
</body>



</html>