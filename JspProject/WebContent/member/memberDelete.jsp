<%@page import="member.model.MemberDAO" %>
<%@page import="member.model.MemberDTO" %>
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
<%
    //프로젝트 경로 구하기
    String path = request.getContextPath();
%>
<body>
<% request.setCharacterEncoding("utf-8");
    String num = request.getParameter("num");

    MemberDTO dto = new MemberDTO();
    dto.setNum(num);
    MemberDAO dao = new MemberDAO();
    dao.memberDelete(dto);
    response.sendRedirect(path + "/index.jsp?body=member/memberList.jsp"); //list
%>
</body>
</html>