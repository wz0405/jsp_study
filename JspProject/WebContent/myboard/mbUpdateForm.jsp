<%@page import="myboard.model.MyBoradDTO" %>
<%@page import="myboard.model.MyBoradDAO" %>
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
    String num = request.getParameter("num");
    MyBoradDAO dao = new MyBoradDAO();
    MyBoradDTO dto = dao.getData(num);
%>
<form action="mbUpdateAction.jsp" method="post">
    <table class="table table-borderd">
        <tr>
            <th>이름</th>
            <td><input type="text" name="name" size="20"
                       value="<%=dto.getName()%>"></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="subject" size="20"
                       value="<%=dto.getSubject()%>"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><input type="text" name="content" size="50"
                       value="<%=dto.getContent()%>"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <!-- hidden으로 num값 넘겨야 한다...위치는 상관없음 --> <input type="hidden"
                                                                name="num" value="<%=num%>"> <input type="submit"
                                                                                                    value="전송"> <input
                    type="button" value="목록"
                    onclick="location.href='mbList.jsp'">
            </td>
        </tr>
    </table>
</form>
</body>
</html>