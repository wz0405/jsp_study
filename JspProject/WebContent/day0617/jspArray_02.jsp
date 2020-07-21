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
<%!
    //선언부
    String msg = "hi Jsp~~";
    int cnt = 0;
%>
<%
    String[] str = {"red", "cyan", "yellow", "orange", "green", "blue", "purple"};
%>
<table class="table table-bordered" style="width: 30%">
    <tr>
        <th>번호</th>
        <th>색상</th>
    </tr>
    <%
        for (int i = 0; i < str.length; i++) {
    %>
    <tr>
        <td><%=i + 1%>
        </td>
        <td bgcolor="<%=str[i]%>"><%=str[i]%>
        </td>
    </tr>
    <%
        }
    %>
</table>
메세지:<%=msg%><br> 카운트:<%=cnt++%>
</body>
</html>