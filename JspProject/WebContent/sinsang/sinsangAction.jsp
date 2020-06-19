<%@page import="sinsang.model.SinsangDAO"%>
<%@page import="sinsang.model.SinsangDTO"%>
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
	String blood = request.getParameter("blood");
	String hp1 = request.getParameter("hp1");
	String hp2 = request.getParameter("hp2");
	String hp3 = request.getParameter("hp3");
	String birth = request.getParameter("birth");
	
	SinsangDTO dto = new SinsangDTO();
	dto.setName(name);
	dto.setBlood(blood);
	dto.setHp(hp1+"-"+hp2+"-"+hp3);
	dto.setBirth(birth);
	SinsangDAO dao = new SinsangDAO();
	dao.sinsangInsert(dto);
	
 	response.sendRedirect("sinsangList.jsp");
	%>
</body>
</html>