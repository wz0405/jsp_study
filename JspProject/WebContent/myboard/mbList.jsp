<%@page import="myboard.model.MyBoradDAO" %>
<%@page import="java.util.Vector" %>
<%@page import="myboard.model.MyBoradDTO" %>
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
    MyBoradDAO dao = new MyBoradDAO();
    Vector<MyBoradDTO> list = dao.getAllDatas();
%>
<table class="table table-bordered">
    <caption>보드 리스트 출력</caption>
    <tr>
        <th width="50">번호</th>
        <th width="70">이름</th>
        <th width="150">제목</th>
        <th width="150">내용</th>
        <th width="150">현재날짜</th>
        <th>수정/삭제</th>
    </tr>
    <%
        for (int i = 0; i < list.size(); i++) {
            MyBoradDTO dto = list.get(i);
    %>
    <tr>
        <td><%=i + 1%>
        </td>
        <td><%=dto.getName()%>
        </td>
        <td><%=dto.getSubject()%>
        </td>
        <td><%=dto.getContent()%>
        </td>
        <td><%=dto.getSdate()%>
        </td>
        <td><a href="mbUpdateForm.jsp?num=<%=dto.getNum()%>">수정</a> <a
                href="mbDelete.jsp?num=<%=dto.getNum()%>">삭제</a></td>
    </tr>
    <%
        } //수정
    %>
</table>
<br>
<a href="mbForm.jsp">추가하기</a>
</body>
</html>