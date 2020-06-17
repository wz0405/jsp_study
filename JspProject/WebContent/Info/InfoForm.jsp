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
	<form action="InfoAction.jsp" method="post">
		<table class="table table-borderd">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" size="7" placeholder="이름">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="addr" size="20" placeholder="주소">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송"> 
				<input
					type="button" value="목록" onclick="location.href='InfoList.jsp'"></td>
			</tr>
		</table>
	</form>

</body>
</html>