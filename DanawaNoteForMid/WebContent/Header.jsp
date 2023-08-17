<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<script type="text/javascript">
	function loginScreenFnc() {
		<%
		HttpSession se = request.getSession();
		if(se.getAttribute("member") != null) { %>
			window.location.href = '<c:url value="/board/list"/>';
		<%} else {
		%>
		var loginUrl = '<c:url value="/login/loginForm"/>';
		window.location.href = loginUrl;
		<% } %>
	}
	console.log("JavaScript 버전: " + navigator.userAgent);
</script>
<style>
 #bodyEntire { 
 	width:600px;
 	background-color:#ffffff; 
 	margin:0 auto; 
 	text-align: center; 
 } 

.danawaImg {
    width: 128px;
    height: 28px;
    cursor: pointer;
    margin-top: 10px; /* 이미지 상단 여백 추가 */
}

/* 공통 스타일 설정 */
.container {
    width: 100%;
    margin: 0 auto;
    padding: 20px;
}
</style>
</head>

<body>
	<div class="bodyEntire">
		<div id="header" class="headerLogin">
			<div class="container">
				<img alt="다나와 이미지" src="/DanawaNoteForMid/img/danawa1.jpg" 
					class="danawaImg" onclick="loginScreenFnc()">

				 <c:if test="${not empty sessionScope.member}">
                <!-- 로그인된 경우 -->
                	<span>${sessionScope.member.userNickname}님</span>
               		<a href="${pageContext.request.contextPath}/login/logout">로그아웃</a>
            	</c:if>

			</div>
			
		</div>
	</div>	
</body>

</html>