<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<%
    //프로젝트 경로 구하기
    String path = request.getContextPath();

%>
<body>
<p style="font-size: 20pt; color: blue;">
    회원가입을 축하합니다.<br>
    <br> <a href="">로그인</a> <a href="<%=path%>/index.jsp?body=member/memberList.jsp">회원명단</a>
</p>

</body>
</html>