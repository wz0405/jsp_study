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
	<h1>jsp시작</h1>
	<!--자바코드를 쓰려면 scriptlet 영역을 표시후 코딩을 한다. -->
	<%
		//여기는 자바
		int age=20;
		String name="hong";
		//내장객체 out을 이용해서 브라우저 출력가능 
		out.print(age);
	%>
	<h4>문자열이나 변수 출력은 표현을 이용해서 출력을 많이 한다.</h4>
	<b>이름:</b><%=name%><br>
	<b>나이:</b><%=age%>세
</body>
</html>