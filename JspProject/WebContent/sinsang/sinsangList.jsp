<%@page import="sinsang.model.SinsangDTO" %>
<%@page import="java.util.Vector" %>
<%@page import="sinsang.model.SinsangDAO" %>
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
<a href="sinsangForm.jsp">데이터 추가</a>
<hr>
<div class="container">
    <table class="table table-striped">
        <caption>신상정보</caption>
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>핸드폰</th>
            <th>혈액형</th>
            <th>생년월일</th>
            <th>편집</th>
        </tr>

        <%
            SinsangDAO dao = new SinsangDAO();
            Vector<SinsangDTO> list = dao.getAllData();
            for (int i = 0; i < list.size(); i++) {
                SinsangDTO dto = list.get(i);
        %>
        <tr>
            <td align="center"><%=i + 1%>
            </td>
            <td><%=dto.getName() %>
            </td>
            <td><%=dto.getHp()%>
            </td>
            <td><%=dto.getBlood() %>형</td>
            <td><%=dto.getBirth() %>
            </td>
            <td><a href="ssUpdateForm.jsp?num=<%=dto.getNum()%>">수정</a>/<a
                    href="ssDeleteForm.jsp?num=<%=dto.getNum()%>">삭제</a>
        </tr>
        <%
            }

        %>
    </table>
</div>
</body>
</html>