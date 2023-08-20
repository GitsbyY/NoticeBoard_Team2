<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script type="text/javascript">
		
</script>
<style>

.warpIdCheck{
	width: 300px;
	height: 300px;
	text-align: center; /* 수평 가운데 정렬 */
}

</style>
</head>
	<jsp:include page="/Header.jsp"/>
<body>
	<div class="warpIdCheck">
		<form action="./check" method="post" class="userIdCheckForm"
					id="danawaUserIdCheckForm" >
	        <input type="text" name="userId" placeholder="아이디 입력">
	        <button type="submit">중복 확인</button>
	    	 <div id="resultMessage">
	        <!-- 중복 확인 결과 메시지가 여기에 표시됨 -->
	        	 <p>${sessionScope.duplicateMessage}</p>
	    	</div>
	    </form>
	   
    </div>
</body>

</html>