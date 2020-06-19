<%@page import="myboard.model.MyBoradDAO"%>
<%@page import="myboard.model.MyBoradDTO"%>
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
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String subject = request.getParameter("subject");
String content = request.getParameter("content");
MyBoradDTO dto = new MyBoradDTO();
dto.setName(name);
dto.setSubject(subject);
dto.setContent(content);
MyBoradDAO dao = new MyBoradDAO();
dao.myBoardInsert(dto);
response.sendRedirect("mbList.jsp");

%>
</body>
</html>