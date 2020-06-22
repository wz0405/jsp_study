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
//프로젝트 경로 구하기 
String path = request.getContextPath();
%>
<body>
<img alt="" src="<%=path%>/shop/2.png" width="100" height="100" border="1">
<img alt="" src="<%=path%>/shop/3.png" width="100" height="100" border="1"><br>
<img alt="" src="<%=path%>/shop/4.png" width="100" height="100" border="1">
<img alt="" src="<%=path%>/shop/5.png" width="100"  height="100"border="1">
</body>
</html>