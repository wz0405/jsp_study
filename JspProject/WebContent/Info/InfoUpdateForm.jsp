<%@page import="info.model.infoDTO"%>
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
		String num = request.getParameter("num");
	infoDAO dao = new infoDAO();
	infoDTO dto = dao.getData(num);
	%>
	<form action="InfoUpdateAction.jsp" method="post">
		<table class="table table-borderd">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" size="7" value="<%=dto.getName()%>">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="addr" size="20" value="<%=dto.getAddr()%>">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<!-- hidden으로 num값 넘겨야 한다...위치는 상관없음 -->
				<input type="hidden" name ="num" value="<%=num%>">
				<input type="submit" value="전송">
					<input type="button" value="목록"
					onclick="location.href='InfoList.jsp'"></td>
			</tr>
		</table>
	</form>
</body>
</html>