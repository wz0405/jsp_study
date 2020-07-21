<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 자바영역에 저장한 변수는 jstl변수로 변환하거나
request나 session에 저장후 사용도 가능하다 -->

<c:set var="msg" value="Happyday"/>
msg: ${msg}
<br>

<%
    String name = "홍길동";
%>
이름: ${name }
<br>
<!--request에 저장된 name을 찾아서 출력...값은 안나옴  -->

<%
    String addr = "서울시 구로구";
    request.setAttribute("addr", addr); //request영역에 저장
    session.setAttribute("blood", "AB"); //session영역에 저장
%>
주소: ${addr }
<br> 주소:${requestScope.addr }
<br> 혈액형:${sessionScope.blood }
<br>

<%
    String name1 = "이영자";
%>

<!-- 자바부분의 변수를 jstl영역의 태그로 변경 -->
<c:set var="name1" value="<%=name1%>"/>
이름1: ${name1 }
</body>
</html>

