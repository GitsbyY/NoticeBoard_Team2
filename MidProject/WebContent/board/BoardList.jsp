<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<style type="text/css">
	body {
		background-color: #f5f5f5;
		
	}
	
	#wrap {
		width: 600px;
		height: 910px;
		background-color: white;
		margin: 0px auto;
	}
	
	.firTrChild {
		background-color: #E0ECF8;
	}
	
	table {
		margin: auto;
		width: 580px;
	}
	
	#listTable {
		border-collapse: collapse;
	}
	
	#listTable tr td {
		border-bottom: 1px solid black;
		border-top: 1px solid black;
	}
	
	#listTable tr td:nth-child(1) {
		width: 50px;
	}
	
	#listTable tr td:nth-child(2) {
		width: 200px;
	}
	
	#listTable tr td:nth-child(3) {
		width: 100px;
	}
	
	#listTable tr td:nth-child(4) {
		width: 170px;
	}
	
	
</style>
<script type="text/javascript">

</script>
</head>

<body>
	<form action="./board" name="board" method="post">
		<div id="wrap">
		<jsp:include page='../Header.jsp'/>
			<div class="topArea">전체게시글 : <%=request.getAttribute("totalContent")%></div>

			<div class="boardArea">
				<table id="listTable">
					<tr>
						<td class="firTrChild">번호</td>
						<td class="firTrChild">제목</td>
						<td class="firTrChild">글쓴이</td>
						<td class="firTrChild">작성일</td>
						<td class="firTrChild">조회</td>
					</tr>
					<c:forEach var="memberDto" items="${boardList}">
						<tr>
							<td>${memberDto.postNo}</td>
							<td style="white-space: nowrap; text-overflow: ellipsis; max-width: 190px; overflow: hidden;"><a href="./view?no=${memberDto.postNo}">${memberDto.postTitle}</a></td>
							<td>${memberDto.postWriter}</td>
							<td>
								<c:set var="now" value="${memberDto.postDate}" />
								<fmt:formatDate value="${now}" pattern="yy-MM-dd HH:mm" type="date"/>
<%--  								${memberDto.postDate} --%>
							</td>
							<td>${memberDto.postViewNo}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="pageNaviArea">
				<table>
					<tr>
						<td>
							<ul style="list-style: none;">
								<a href="#"><li style="float: left;">&nbsp;◀</li></a>
								<a href="#"><li style="float: left;">&nbsp;[<%=request.getAttribute("boardListNum")%>]</li></a>
								<li style="float: left;">&nbsp;[2]</li>
								<li style="float: left;">&nbsp;[3]</li>
								<li style="float: left;">&nbsp;[4]</li>
								<li style="float: left;">&nbsp;[5]</li>
								<li style="float: left;">&nbsp;▶</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>

			<div class="postArea">
				<a href="./write"><input type="button" value="글쓰기" name="write"></a>
			</div>
			
		<jsp:include page='../Tail.jsp'/>
		</div>
	</form>
</body>

</html>