<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		
	</style>
	<script type="text/javascript">
		
		function ss(no) {
			var ss = document.getElementsByClassName("del")[no];
			var parent = ss.parentNode;
			var input = parent.children[0];
			
// 			var input = document.getElementById("input");
			input.value = "";
		}
		
	</script>
</head>

<body>
	
	<div id="div">
		<input id="input" type="text" class="inputTag" value="aaa">
		<button type="button" id="button" class="del" onclick="ss(0);">지우기</button>
	</div>
	
	<div id="div2">
		<input id="input2" type="text" class="inputTag" value="bbb">
		<button type="button" id="button2" class="del" onclick="ss(1);">지우기2</button>
	</div>
</body>

</html>