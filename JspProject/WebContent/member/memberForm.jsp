<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
	function idopen() {
		window.open('member/IdSearchForm.jsp', 'w',
				'width=500px,height=500px,left=500px,top=100px');
	}
</script>
</head>
<%
//프로젝트 경로 구하기 
String path = request.getContextPath();
%>
<body>
	<form action="<%=path%>/member/memberAction.jsp" method="post" name="frm">
		<table class="table table-bodered" style="width: 500px;">
			<caption>SignIn</caption>
			<tr>
				<th>Name</th>
				<td>
					<input type="text" size="8" name="name" required="required" autofocus="autofocus" placeholder="name">
				</td>
			</tr>
			<tr>
				<th>Id</th>
				<td>
					<input type="text" size="10" name="id" required="required" readonly="readonly">
					<input type="button" value="Check" onclick="idopen()">
				</td>
			</tr>
			<tr>
				<th>Password</th>
				<td>
					<input type="password" size="8" name="pass" required="required" placeholder="password">
				</td>
			</tr>
			<tr>
				<th>Re-Password</th>
				<td>
					<input type="password" size="8" name="pass2" required="required" placeholder="Re-password">
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="submit">
					<input type="reset" value="inital">
				</td>
			</tr>

		</table>
	</form>
</body>
</html>