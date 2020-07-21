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
<body>
<form action="mbFormAction.jsp" method="post">
    <table class="table table-borderd">
        <tr>
            <th>이름</th>
            <td><input type="text" name="name" size="20" placeholder="이름">
            </td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="subject" size="20" placeholder="제목">
            </td>
        </tr>
        <tr>
            <th>내용</th>
            <td><input type="text" name="content" size="50" placeholder="내용">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="전송">
                <input type="button" value="목록"
                       onclick="location.href='mbList.jsp'"></td>
        </tr>
    </table>
</form>
</body>


</html>