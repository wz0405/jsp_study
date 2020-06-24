<%@page import="java.text.SimpleDateFormat"%>
<%@page import="guest.model.GuestDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="guest.model.GuestDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<%
	//로그아웃상태에서는 안보이고 로그인상태에서만 보이도록
String loginok = (String) session.getAttribute("loginok");
%>
<body>
	<%
		if (loginok != null) {
	%>
	<jsp:include page="guestForm.jsp" />
	<%}
%>
	<br>
	<br>
	<hr width="400" align="left">
	<br>
	<%
		String path = request.getContextPath();
	GuestDAO dao = new GuestDAO();
	Vector<GuestDTO> list = dao.guestGetAlldata();

	for (int i = 0; i < list.size(); i++) {
		GuestDTO dto = list.get(i);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:MM");
	%>

	<b>No.<%=i + 1%></b>
	<table class="table table-striped" style="width: 400px; border: 1px dotted gray;">
		<tr>
			<td>
				작성자:
				<%=dto.getName()%>(<%=dto.getId()%>)
			</td>

			<td>
				<%=sdf.format(dto.getWriteday())%>
			</td>
		</tr>

		<tr height="100">
			<td colspan="2">
				<img alt="" src="<%=path%>/avata/b<%=dto.getAvata()%>.png">
				<pre style="width: 300px;"><%=dto.getContent()%></pre>
			</td>
		</tr>
	</table>
	<%}
%>




</body>
</html>

