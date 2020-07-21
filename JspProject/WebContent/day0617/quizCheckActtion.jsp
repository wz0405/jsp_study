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
    String grade = request.getParameter("grade");
    String[] Lang = request.getParameterValues("Lang"); //배열형태로 받을 수 있음
    String person = request.getParameter("person");
    String height = request.getParameter("height");
    String weight = request.getParameter("weight");
    String nal = request.getParameter("nal");
%>
<h3>***신상정보***</h3>
학력:<%=grade%><br> 가능한언어:
<br>
<%
    if (Lang == null) {
%>
<b>값이 없습니다.</b>
<%
} else {
    for (int i = 0; i < Lang.length; i++) {
%>
<b><%=Lang[i]%>
</b>
<%
        }
    }
%><br> 인기있는사람:<%=person%><br> 키:<%=height%><br> 몸무게:<%=weight%><br>
날짜:<%=nal%>
</body>
</html>