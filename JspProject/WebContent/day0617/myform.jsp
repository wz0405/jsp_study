<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
	<h2>폼단위 전송(post)</h2>
	<form action="myformAction.jsp" method="post">
		<b>메세지:</b> <input type="text" name="msg" size="20"><br>
		<input type="submit" value="전송"> <input type="reset"
			value="초기화">
	</form>
	<h2>폼단위로 전송(get)</h2>
	<form action="myformActionGet.jsp" method="get">
		<b>메세지:</b> <input type="text" name="msg" size="20"><br>
		<input type="submit" value="전송"> <input type="reset"
			value="초기화">
	</form>
</body>
</html>