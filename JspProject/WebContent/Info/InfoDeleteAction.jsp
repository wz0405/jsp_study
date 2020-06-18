<%@page import="info.model.infoDAO"%>
<%@page import="info.model.infoDTO"%>
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
<% request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	
	infoDTO dto = new infoDTO();
	dto.setNum(num);
	infoDAO dao = new infoDAO();
	dao.infoDelete(dto);
	response.sendRedirect("InfoList.jsp");
%>
</body>
</html>