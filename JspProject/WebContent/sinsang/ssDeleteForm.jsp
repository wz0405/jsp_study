<%@page import="sinsang.model.SinsangDAO" %>
<%@page import="sinsang.model.SinsangDTO" %>
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
    String num = request.getParameter("num");

    SinsangDTO dto = new SinsangDTO();
    dto.setNum(num);
    SinsangDAO dao = new SinsangDAO();
    dao.sinsangDelete(dto);
    response.sendRedirect("sinsangList.jsp"); //list
%>
</body>
</html>