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
<b>여러 데이터 전송</b>
<form action="myformsAction.jsp" method="post">
    <table class="table table-hover" style="width: 50%">
        <tr>
            <th>name</th>
            <td><input type="text" name="name" size="20" placeholder="name">
            </td>
        </tr>

        <tr>
            <th>password</th>
            <td><input type="password" name="pass" size="20"
                       placeholder="pass"></td>
        </tr>
        <tr>
            <th>driver license</th>
            <td><input type="checkbox" name="license">license</td>
        </tr>
        <tr>

            <td colspan="2" align="center"><input type="submit" value="전송">
                <input type="reset" value="초기화"></td>
        </tr>
    </table>
</form>
</body>
</html>