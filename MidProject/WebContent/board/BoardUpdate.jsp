<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>게시판 - 수정하기</title>
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
      #titleArea{
         width: 570px;
         height:100px;
         margin: auto;
      }
      #textArea{
         width: 570px;
         height: 200px;
         margin: auto;
      }
      #content{
         width: 570px;
         height: 100px;
      }
      #update{
         margin-left: 220px;
      }
   </style>
   <script type="text/javascript">
      
   </script>
</head>

<body>

   <form action="./update" method="post">
      <div id="wrap">
      <jsp:include page='../Header.jsp'/>
         <div id="titleArea">
            제목
            <input type="text" value="${boardDto.postTitle}" name="title" id="title">
         </div>
         <div id="textArea">
            <textarea name="content" id="content">${boardDto.postContent}</textarea>
         </div>
         <div id="btnArea">
            <input type="hidden" value="${boardDto.postNo}" name="no">
            <input type="submit"value="수정하기" id="update">
            <input type="button" value="취소" onclick="location.href='./view?no=${boardDto.postNo}'">
         </div>
      <jsp:include page='../Tail.jsp'/>
      </div>
   </form>
   
</body>

</html>