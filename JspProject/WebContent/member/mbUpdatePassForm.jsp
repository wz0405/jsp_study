<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="../jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <%
        String path = request.getContextPath();
        String num = request.getParameter("num");

    %>
</head>
<body>
<form action="<%=path%>/member/mbUpdatePassAction.jsp" method="post">
    <table class="table table-bordered" style="width: 300px;">
        <tr height="150" valign="middle">

            <td>
                <b>가입시 입력한 비밀번호를 입력해주세요.</b><br><br>
                <input type="hidden" name="num" value="<%=num%>">
                <input type="password" name="pass" size="7" autofocus="autofocus" required="required">
                <input type="submit" value="확인">
            </td>
        </tr>
    </table>
</form>
</body>
</html>