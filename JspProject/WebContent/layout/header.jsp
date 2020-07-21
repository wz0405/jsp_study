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
            <%
//프로젝트 경로 구하기 
String path = request.getContextPath();
%>
        </head>
        <body>
        <a href="<%=path%>/index.jsp"><img alt="" src="<%=path%>/shop/1.png" width="500" height="200"></a>
        </body>
        </html>