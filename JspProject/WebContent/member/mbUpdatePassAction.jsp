<%@page import="member.model.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>
<%
    String path = request.getContextPath();
    String num = request.getParameter("num");
    String pass = request.getParameter("pass");

    MemberDAO dao = new MemberDAO();
    boolean flag = dao.isEqualPass(num, pass);

    if (flag) {
        String s = path + "/index.jsp?body=member/memberUpdateForm.jsp?num=" + num;

        response.sendRedirect(s);
    } else {%>
<script type="text/javascript">
    alert("비밀번호가 틀립니다.");
    history.back();
</script>
<%
    }
%>
</body>
</html>

</html>