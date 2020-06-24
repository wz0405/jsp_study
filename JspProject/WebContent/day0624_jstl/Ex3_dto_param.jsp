<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
	<fmt:requestEncoding value="utf-8" />
	<form action="Ex3_dto_param.jsp" method="post">
		이름입력:
		<input type="text" name="name" size="10">
		<br> 나이입력:
		<input type="text" name="age" size="8">
		<br> 주소입력:
		<input type="text" name="addr" size="20">
		<br>
		<input type="submit" value="서버전송">
	</form>
	<c:if test="${not empty param.name}">
		<jsp:useBean id="dto" class="test.code.DataDTO" />
		<jsp:setProperty property="*" name="dto" />
		<pre>
		이름:${dto.name}
		나이:${dto.age}
		주소:${dto.addr}
		</pre>
	</c:if>
</body>
</html>