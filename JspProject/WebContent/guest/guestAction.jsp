<%@page import="guest.model.GuestDAO"%>
<%@page import="guest.model.GuestDTO"%>
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
//프로젝트 경로 구하기 
String path = request.getContextPath();
request.setCharacterEncoding("utf-8");

%>
<jsp:useBean id="dao" class="guest.model.GuestDAO"/>
<jsp:useBean id="dto" class="guest.model.GuestDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
//읽은 데이터를 db에 인서트
dao.insertGuest(dto);
response.sendRedirect(path+"/index.jsp?body=guest/guestList.jsp");
%>
</body>
</html>