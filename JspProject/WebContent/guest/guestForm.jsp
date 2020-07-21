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
    //로그인상태에서 글쓰기가 보이려면 세션에서 id와 name을 읽어와야 한다.

    //프로젝트 경로 구하기
    String path = request.getContextPath();
    String id = (String) session.getAttribute("idok");
    MemberDAO dao = new MemberDAO();
    String name = dao.getName(id);
%>
<form action="<%=path%>/guest/guestAction.jsp" method="post">
    <table class="table table-bordered" style="width: 400px;">
        <tr>
            <td>
                작성자:
                <b><%=name%>(<%=id%>)
                </b>
                <br> <br>
                <textarea rows="5" cols="40" name="content" autofocus="autofocus"
                          style="border: 2px dotted pink;"></textarea>
            </td>
            <td valign="middle" align="center">
                <input type="hidden" name="id" value="<%=id%>">
                <input type="hidden" name="name" value="<%=name%>">
                <input type="submit" value="메모하기">

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%
                    for (int i = 1; i <= 8; i++) {
                %>
                <input type="radio" value="<%=i%>" <%=i == 1 ? "checked" : ""%> style="width: 30px;" name="avata">

                <%
                    }
                %>

                <!-- 아이콘 이미지 -->
                <br>
                <%
                    for (int i = 1; i <= 8; i++) {
                %>
                <img alt="" src="<%=path%>/avata/b<%=i%>.png" style="width: 30px;">

                <%
                    }
                %>
            </td>
        </tr>
    </table>
</form>
<hr>
</body>
</html>