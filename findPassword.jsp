<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>비밀번호 찾기(버튼 border만)</title>
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
	float: center;
	text-align: center;
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
.find_searchId { /*  아이디 찾기 */
	border-bottom:1px solid gray;
	border:0;
	outline:white;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:gray;
}     
.find_searchPwd { /*  비밀번호 찾기 */
	border-bottom:1px solid #2027eb;
	border:0;
	outline:white;
	cursor: pointer;
 	width:200px;
 	text-align:center;
 	color:#2027eb;
}  
 .userInfo_searchBar{
 	width:400px;
 	height:36px;
 	border:1px solid gray;
 	border-radius: 4px;
 	margin:10px;
 }
 .search_button{
    text-align: center;
    width: 400px;
    height: 36px;
    border-radius: 4px;
    background-color: #2027eb;
    color:white;
    
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
   		
		<div id="container">
			<div class="search_wrap">
				<div class="findSearchBar"> <!--  id="findId1Btn"> -->
					<button class="find_searchId" onclick="find_searchIdFnc()">
						<h2>아이디 찾기</h2>
					</button>
					<button class="find_searchPwd" onclik="find_searchPwdFnc">
						<h2>비밀번호 찾기</h2>
					</button>
				</div>
				<div id="explan_certified">
					<h3>다나와 아이디 또는 인증 이메일을 입력해 주세요.</h3>

					<input class="userInfo_searchBar" type="text" placeholder="다나와 아이디 또는 이메일 주소 입력">
					<button class="search_button">
						<strong>확인</strong>
					</button>
				</div>
			</div> <!-- id="search_wrap" -->
		</div> <!-- id="container" -->
		
		<footer>
			<jsp:include page="./Tail.jsp" />
		</footer>
	</div>
</body>



</html>