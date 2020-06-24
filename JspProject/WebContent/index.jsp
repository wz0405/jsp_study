<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<%
	//프로젝트 경로 구하기 
String path = request.getContextPath();
String body = "layout/body.jsp";

if (request.getParameter("body") != null) {
	body = request.getParameter("body");
}
%>
<body>
	<!-- title -->
	<div style="position: absolute; left: 200px; top: 30px; width: 700px; height: 250px;">
		<jsp:include page="layout/header.jsp" />

	</div>
	<!-- main page -->
	<div style="position: absolute; left: 350px; top: 400px; width: 1500px; height: 1000px; overflow:auto;
		height:auto;">
		<jsp:include page="<%=body%>" />

	</div>
	<!-- menu -->
	<div style="position: absolute; left: 300px; top: 290px; width: 800px; height: 50px; font-size: 10pt;">
		<jsp:include page="layout/menu.jsp" />

	</div>
	<!-- bottom -->
	<div style="position: absolute; left: 200px; top: 2100px; width: 600px; height: 100px;">
		<jsp:include page="layout/bottom.jsp" />
	</div>
</body>
</html>