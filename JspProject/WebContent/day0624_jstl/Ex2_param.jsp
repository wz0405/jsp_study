<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<fmt:requestEncoding value="utf-8"/>
<form action="Ex2_param.jsp" method="post">
이름입력:<input type="text" name="name" size="10"><br>
나이입력:<input type="text" name="age" size="8"><br>
<input type="submit" value="서버전송">
</form>
<hr>
<c:if test="${not empty param.name }"/>
	<h2>결과출력</h2>
	이름:${param.name}<br> <!-- ${param.name}으로 출력 -->
	나이:${param.age}<br>
<c:if test=""/>
</body>
</html>