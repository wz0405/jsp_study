<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Vector" %>
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
    MemberDAO dao = new MemberDAO();
    Vector<MemberDTO> list = dao.getAlldata();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
%>
<div style="width:500px;">
    <b style="color:cyan">총<%=list.size() %>명의 회원이 있습니다.</b>
    <table class="table table-striped">
        <caption>회원 명단</caption>
        <tr>
            <th width="50">번호</th>
            <th width="70">이름</th>
            <th width="150">아이디</th>

            <th width="150">현재날짜</th>
            <th>수정/삭제</th>
        </tr>
        <%
            for (int i = 0; i < list.size(); i++) {
                MemberDTO dto = list.get(i);
        %>
        <tr>
            <td><%=i + 1%>
            </td>
            <td><%=dto.getName()%>
            </td>
            <td><%=dto.getId()%>
            </td>
            <td><%=sdf.format(dto.getGaipday())%>
            </td>
            <td>

                <a href="<%=path%>/index.jsp?body=member/mbUpdatePassForm.jsp?num=<%=dto.getNum()%>">수정</a>

                <a href="<%=path%>/member/memberDelete.jsp?num=<%=dto.getNum()%>">삭제</a>
            </td>
        </tr>
        <%
            } //수정
        %>
    </table>
</div>
<br>

</body>
</html>