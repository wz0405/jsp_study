<%@page import="member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
	function check(f) {
		/* 아이디 최하 길이는 5*/
		if (f.id.value.length < 5) {
			alert("5글자 이상 입력하세요.");
			return false;
		}
		/* 공백체크 */
		var idx = f.id.value.indexOf(' ');//공백의 위치
		if (idx >= 0) {
			alert("아이디에 공백이 있습니다.");
			return false;
		}
	}
</script>
</head>
<%
	//프로젝트 경로 구하기 
String path = request.getContextPath();

//키값이 null이면 폼을 나타내려한다.
String key = request.getParameter("key");
if (key == null) {
%>
<!-- 아이디 입력폼 -->
<form action="<%=path%>/member/IdSearchForm.jsp" method="post" onsubmit="check(this)">
	<table>
		<tr>
			<td>
				<b>insert id:</b>
				<input type="text" name="id" size="10">
				<input type="hidden" name="key" value="result">
				<input type="submit" value="중복체크">
			</td>

		</tr>
	</table>
</form>
<%
	} else {
	/* 입력결과 */
	String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	boolean flag = dao.searchId(id);

	if (flag) {
		//이미 아이디가 존재할 경우
%>
<table>
	<tr>
		<td>
			<img alt="" src="<%=path%>/shop/8.png" width="150px">
			<b style="color: red;">
				<br>이미 존재하는 아이디입니다<br> 다른아이디로 입력해 주세요.<br>
			</b>
			<input type="button" value="insert id" onclick="location.href='<%=path%>/member/IdSearchForm.jsp'">
		</td>
	</tr>

</table>

<%
	} else {
%>
<table>
	<tr>
		<td>
			<img alt="" src="<%=path%>/shop/7.png" width="150px">
			<b style="color: blue;">
				<br>사용가능한 아이디 입니다.<br>
			</b>
			<input type="button" value="사용하기" onclick="">
			<input type="button" value="insert id" onclick="location.href='<%=path%>/member/IdSearchForm.jsp'">
		</td>
	</tr>

</table>
<%
	}

}
%>
<body>

</body>
</html>