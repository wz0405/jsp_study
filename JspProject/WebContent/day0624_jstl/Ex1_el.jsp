<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
<!-- 변수 선언 -->
<c:set var="name" value="강호동"/>
<c:set var="age" value="23"/>
<!-- 변수 출력 -->
<c:out value="${name }"/>
<br>
<c:out value="${age }"/>
<br>

<!-- 변수 간단히 출력 -->
${name }
<br> ${age }
<br>
<!-- 변수 2개 추가로 선언(숫자) -->
<c:set var="su1" value="7"/>
<c:set var="su2" value="4"/>
<c:set var="msg" value="happy!"/>
<table border="1">
    <caption>JSTL연산자 공부</caption>
    <tr>
        <th>연산자</th>
        <th>결과값</th>
    </tr>
    <tr>
        <td>\${su1+su2 }</td>
        <td>${su1+su2 }</td>
    </tr>
    <tr>
        <td>\${-su1-su2 }</td>
        <td>${-su1-su2 }</td>
    </tr>
    <tr>
        <td>\${su1*su2 }</td>
        <td>${su1*su2 }</td>
    </tr>
    <tr>
        <td>\${empty msg }</td>
        <td>${empty msg }</td> <!-- value값이 없으면 true -->
    </tr>
    <tr>
        <td>1씩증가</td>
        <td>
            <c:set var="su1" value="${su1+1 }"/>
            ${su1 }<br>
        </td>
    </tr>
</table>
</body>
</html>