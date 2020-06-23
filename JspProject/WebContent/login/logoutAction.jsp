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
<%
String path=request.getContextPath();

//로그인에 대한 세션값을 삭제
session.removeAttribute("loginok");
//로그인 메인으로 이동...항상 메인을 통해 이동하게끔 만들어 주셔야...
response.sendRedirect(path+"/index.jsp?body=login/loginMain.jsp");
%>

<body>

</body>
</html>