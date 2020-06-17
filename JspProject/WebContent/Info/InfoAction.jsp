<%@page import="info.model.infoDTO"%>
<%@page import="info.model.infoDAO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
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
	//1.파라메타 값 받기(엔코딩)
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	//2. 입력데이타를 dto로 묶어서 
	infoDTO dto = new infoDTO();
	dto.setName(name);
	dto.setAddr(addr);
	//3. 메소드로 전달 
	infoDAO dao = new infoDAO();
	dao.infoInsert(dto);
	//4. 출력jsp로 이동..url로 바뀜
	response.sendRedirect("InfoList.jsp");
	%>
</body>
</html>