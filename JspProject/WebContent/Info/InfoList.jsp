<%@page import="info.model.infoDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="info.model.infoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		infoDAO dao = new infoDAO();
	Vector<infoDTO> list = dao.getAllDatas();
	%>
	<a href="InfoForm.jsp">데이타추가</a>
	<hr>
	<table class="table table-bordered">
		<caption>info리스트 출력</caption>
		<tr>
			<th width="50">번호</th>
			<th width="70">이름</th>
			<th width="150">주소</th>
			<th width="150">현재날짜</th>
			<th>수정/삭제</th>
		</tr>
		<%
			for (int i = 0; i < list.size(); i++) {
			infoDTO dto = list.get(i);
		%>
		<tr>
			<td><%=i + 1%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getAddr()%></td>
			<td><%=dto.getSdate()%></td>
			<td><a href="InfoUpdateForm.jsp?num=<%=dto.getNum()%>">수정</a> <a
				href="InfoDeleteAction.jsp?num=<%=dto.getNum()%>">삭제</a></td>
		</tr>
		<%
			} //수정 
		%>
	</table>
</body>
</html>