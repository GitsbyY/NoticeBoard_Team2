<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원 목록</title>

<script type="text/javascript">
	
</script>
</head>

<body>

<%-- 	<jsp:include page="/Header.jsp"/> --%>
	<h1>회원목록</h1>
	<p>
		<a href='./add'>신규 회원</a>
	</p>
	

	<c:forEach var="userDto" items="${userList}">

		${userDto.no},
		<a href='./update?no=${userDto.no}'>
			${userDto.name}
		</a>
		, ${userDto.email}
		, ${userDto.createDate},
		<a href='./delete?no=${userDto.no}'>[삭제]</a><br>
			
	</c:forEach>
	
	<jsp:include page="/Tail.jsp"/>
</body>
</html>