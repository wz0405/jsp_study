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
<a href="<%=path%>/">Home</a>&nbsp;&nbsp;&nbsp;
<a href="<%=path%>/">Login</a>&nbsp;&nbsp;&nbsp;
<a href="<%=path%>/index.jsp?body=member/memberForm.jsp">SignIn</a>&nbsp;&nbsp;&nbsp;
<a href="<%=path%>/">GuestBook</a>&nbsp;&nbsp;&nbsp;
<a href="<%=path%>/">Board</a>&nbsp;&nbsp;&nbsp;
<a href="<%=path%>/">Notice</a>&nbsp;&nbsp;&nbsp;
</body>
</html>