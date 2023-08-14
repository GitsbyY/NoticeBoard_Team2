<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>비밀번호 찾기(거의 완성)</title>
   <script type="text/javascript">
   function find_searchPwdFnc() { // 비밀번호 찾기
		window.open("findPassword.jsp", "_self");
	}
	function find_searchIdFnc() { // 아이디 찾기 
		window.open("findLogin.jsp", "_self");
	}
	</script>
	<style>
body{
	width:1903px;
	height:930;
	background-color:#f5f5f5;
}
#bodyEntire {
	width:600px;
	height:930px;
	margin:auto;
	background-color:#ffffff;
}
.search_wrap{
    width: 440px;
    padding-top: 50px;
    margin: 0 auto;
    box-sizing: border-box;
}
.find_searchId { /*  아이디 찾기 */
	border-bottom:1px solid gray;
	border:0;
	outline:white;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:gray;
 	background-color:#ffffff;
}     
.find_searchPwd { /*  비밀번호 찾기 */
	border-bottom:1px solid #2027eb;
	border:0;
	outline:white;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:#3263EB;
 	background-color:#ffffff;
}  
.certified{
	 letter-spacing: -.02em; /* 글자 사이 간격*/
	 margin-left:5px;
}
 .userInfo_searchBar{ /* 이메일 주소 입력 */
 	width:400px;
 	height:45px;
 	border:1px solid gray;
 	border-radius: 4px;
 	margin:10px;
 }
 .search_button{ /* 확인 버튼*/
    width: 403px;
    height: 49px;
    border-radius: 4px;
    background-color: #3263EB;
    color:white;
    border:0;
    margin-left:10px;
    
 }
</style>
</head>

<body>
   <div id="bodyEntire">
   		<jsp:include page="../Header.jsp"/>
	   		
		<div id="container">
			<div class="search_wrap">
				<div class="findSearchBar"> <!--  id="findId1Btn"> -->
					<button class="find_searchId" onclick="find_searchIdFnc()">
						<h2>아이디 찾기</h2>
					</button>
					<button class="find_searchPwd" onclick="find_searchPwdFnc">
						<h2>비밀번호 찾기</h2>
					</button>
				</div>
				<div id="explan_certified">
					<h3 class="certified">다나와 아이디 또는 인증 이메일을 입력해 주세요.</h3>

					<input class="userInfo_searchBar" type="text" placeholder="다나와 아이디 또는 이메일 주소 입력">
					<button class="search_button">
						<strong>확인</strong>
					</button>
				</div>
			</div> <!-- id="search_wrap" -->
		</div> <!-- id="container" -->
		
		<footer>
			<jsp:include page="../Tail.jsp" />
		</footer>
	</div>
</body>



</html>