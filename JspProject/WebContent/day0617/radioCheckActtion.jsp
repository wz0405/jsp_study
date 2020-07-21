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
<%
    request.setCharacterEncoding("utf-8");
    String season = request.getParameter("season");
    String[] yasik = request.getParameterValues("yasik"); //배열형태로 받을 수 있음
    String nal = request.getParameter("naljja");
%>
<h3>data read</h3>
좋아하는 계절:<%=season%><br> 좋아하는 야식:
<br>
<%
    if (yasik == null) {
%>
<font color="blue">좋아하는 야식 없음</font>
<br>
<%
} else {
    for (int i = 0; i < yasik.length; i++) {
%>
&nbsp;<%=yasik[i]%><br>

<%
        }
    }
%>
선택 날짜:<%=nal%>
</body>
</html>