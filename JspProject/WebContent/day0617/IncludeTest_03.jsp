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
<h4>include start</h4>
<h4>example1</h4>
<jsp:include page="test.jsp"></jsp:include>
<h4>example2</h4>
<jsp:include page="jspArray_02.jsp"></jsp:include>
<h4>include end</h4> <!--전부 실행함 -->
</body>
</html>