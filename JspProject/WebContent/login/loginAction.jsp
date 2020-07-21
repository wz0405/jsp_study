<%@page import="member.model.MemberDAO" %>
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
    String path = request.getContextPath();

    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    String save = request.getParameter("savechk");

//아이디에 비번이 맞는지 확인
    MemberDAO dao = new MemberDAO();
    boolean flag = dao.isLogin(id, pass);

//맞으면 세션에 에 저장후 로그인 메인으로 이동
    if (flag) {
        //로그인중인지를 알수있는 세션저장
        session.setAttribute("loginok", "yes");

        //아이디와 체크값 저장
        session.setAttribute("idok", id);

        //체크하면 값으로 on 이 안하면 null이 저장
        session.setAttribute("saveok", save);

        //세션에서 유지시간
        session.setMaxInactiveInterval(60 * 60 * 8); //8시간동안 서버에 정보가 유지

        //로그인메인으로 이동
        response.sendRedirect(path + "/index.jsp?body=login/loginMain.jsp");
    } else {%>
<script type="text/javascript">
    alert("아이디와 비밀번호가 맞지 않습니다.");
    history.back();
</script>
<%
    }
%>

<body>

</body>
</html>