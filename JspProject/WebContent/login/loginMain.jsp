<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>

<body>
<%
    //세션에 저장된 loginok값을 찾는다
    String loginok = (String) session.getAttribute("loginok");

    if (loginok == null || loginok.equals("")) //로그아웃
    {%>
<jsp:include page="loginForm.jsp"/>
<%
} else  //로그인상태
{
%>
<jsp:include page="logoutForm.jsp"/>
<%
    }
%>
</body>
</html>
