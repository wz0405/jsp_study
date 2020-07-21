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
<h2>post방식으로 읽기</h2>
<%
    //한글엔코딩
    request.setCharacterEncoding("utf-8");
    String msg = request.getParameter("msg");
%>
<b>입력한 메세지는</b>
<br>
<font color="blue"><%=msg%>입니다</font>
</body>
</html>