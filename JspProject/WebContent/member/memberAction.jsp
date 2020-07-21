<%@page import="member.model.MemberDAO" %>
<%@page import="member.model.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <%
        //프로젝트 경로 구하기
        String path = request.getContextPath();
    %>
</head>
<%
    //프로젝트 경로 구하기
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");

    MemberDTO dto = new MemberDTO();
    dto.setId(id);
    dto.setName(name);
    dto.setPass(pass);
    MemberDAO dao = new MemberDAO();
    dao.insertMember(dto);

    response.sendRedirect(path + "/index.jsp?body=member/successPage.jsp");
//path+"index.jsp?body=member/successPage.jsp"
%>
<body>

</body>
</html>