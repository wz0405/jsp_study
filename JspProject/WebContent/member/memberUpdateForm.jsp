<%@page import="member.model.MemberDTO" %>
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
<%
    //프로젝트 경로 구하기
    String path = request.getContextPath();
%>
<body>
<%
    String num = request.getParameter("num");
    String id = request.getParameter("id");
    MemberDAO dao = new MemberDAO();
    MemberDTO dto = dao.getData(num);
%>
<form action="<%=path%>/member/memberUpdateAction.jsp" method="post" name="frm">
    <table class="table table-bodered" style="width: 500px;">
        <caption>Change info</caption>
        <tr>
            <th>Name</th>
            <td>
                <input type="text" size="8" name="name" autofocus="autofocus" value="<%=dto.getName()%>">
            </td>
        </tr>
        <tr>
            <th>Id</th>
            <td>
                <b style="color: red;"><%=dto.getId()%>
                </b>
                <input type="hidden" name="id" value="<%=dto.getId()%>">
            </td>
        </tr>
        <tr>
            <th>Password</th>
            <td>
                <input type="password" size="8" name="pass" value="<%=dto.getPass()%>">
            </td>
        </tr>
        <tr>
            <th>Re-Password</th>
            <td>
                <input type="password" size="8" name="pass2" value="<%=dto.getPass()%>">
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">

                <input type="hidden" name="num" value="<%=num%>">

                <input type="submit" value="수정">
                <input type="button" value="회원명단"
                       onclick="location.href='<%=path%>/index.jsp?body=member/memberList.jsp'">
            </td>
        </tr>

    </table>
</form>
</body>
</html>