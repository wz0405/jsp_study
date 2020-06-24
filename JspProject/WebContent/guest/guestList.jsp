<%@page import="java.text.SimpleDateFormat"%>
<%@page import="guest.model.GuestDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="guest.model.GuestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<%
	String path = request.getContextPath();
//로그아웃상태에서는 안보이고 로그인 상태에서만 보이도록
String loginok = (String) session.getAttribute("loginok");
%>
<body>

	<%
		if (loginok != null) {
	%>
	<jsp:include page="guestForm.jsp" />
	<%
}

%>
<%GuestDAO dao = new GuestDAO();
Vector<GuestDTO> list = dao.guestGetAlldata();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");

%>
<br><br>
	<div >
		<b style="color: cyan">총<%=list.size()%>개의 글이 있습니다.
		</b>
		<table class="table table-striped" style="width:500px; border:1px dotted">
			<caption>게시글</caption>
			<tr>
				<th width="30">번호</th>
				<th width="60">이름</th>
				<th width="40">아이디</th>
				<th width="200">내용</th>
				<th width="200">현재날짜</th>

			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
				GuestDTO dto = list.get(i);
			%>
			<tr>
				<td><%=i + 1%></td>
				<td><%=dto.getName()%></td>
				<td><%=dto.getId()%></td>
				<td><%=dto.getContent()%></td>
				<td><%=sdf.format(dto.getWriteday())%></td>
				<td>
			</tr>
			<%
				} //수정
			%>
		</table>
	</div>
</body>
</html>