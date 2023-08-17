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
   
   .pageNaviArea {
      margin-left: 160px;
      width: 236px;
      text-align: center;
   }
   
   #postArea{
      text-align: center;
   }
   
</style>
<script type="text/javascript">

</script>
</head>

<body>
   
      <div id="wrap">
      <jsp:include page='../Header.jsp'/>
         <div class="topArea">전체게시글 : ${pageDto.totalContent}</div>

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
                     <td style="white-space: nowrap; text-overflow: ellipsis; max-width: 190px; overflow: hidden;">
                        <a href="./view?no=${memberDto.postNo}">
                           ${memberDto.postTitle}
                        </a>
                     </td>
                     <td>${memberDto.postWriter}</td>
                     <td>
                        <c:set var="now" value="${memberDto.postDate}" />
                        <fmt:formatDate value="${now}" pattern="yy-MM-dd HH:mm" type="date"/>
<%--                          ${memberDto.postDate} --%>
                     </td>
                     <td>${memberDto.postViewNo}</td>
                  </tr>
               </c:forEach>
            </table>
         </div>
         
         <br>
                  
         <form action="./list" method="post">
            <div class="pageNaviArea">
               <c:if test="${pageDto.currentPage > 1}">
                  <button type="submit" name="pageNo" value="${pageDto.currentPage-1}">prev</button>
               </c:if>
               
               <c:forEach var="i" begin="${pageDto.startPage}" end="${pageDto.endPage}">
                     <button type="submit" name="pageNo" value="${i}">${i}</button>
               </c:forEach>
               <c:if test="${pageDto.currentPage < pageDto.totalPage}">
                  <button type="submit" name="pageNo" value="${pageDto.currentPage+1}">next</button>
               </c:if>
               
            </div>
         </form>
         <div class="postArea">
            <a href="./write"><input type="button" value="글쓰기" name="write"></a>
         </div>
         
      <jsp:include page='../Tail.jsp'/>
      </div>
   
</body>

</html>