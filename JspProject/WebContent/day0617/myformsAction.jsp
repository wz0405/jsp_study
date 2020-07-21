<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    String pass = request.getParameter("pass");
    String license = request.getParameter("license");
%>
<h3>결과값 출력</h3>
이름:<%=name%>
비밀번호:<%=pass%>
운전면허:<%=license == null ? "없음" : "운전면허있음"%>
</body>
</html>