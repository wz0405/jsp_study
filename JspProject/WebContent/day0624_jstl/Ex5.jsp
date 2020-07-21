<%@page import="java.util.Vector" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 자바영역에서 벡터 출력 -->
<%
    List<String> list = new Vector<String>();
    list.add("바나나");
    list.add("사과");
    list.add("배");
    list.add("오렌지");
    list.add("키위");
    list.add("자몽");

    request.setAttribute("list1", list);
%>
<!--자바영역에서 벡터선언후 리퀘스트에 저장한 변수를 출력하기  -->
<c:forEach var="a" items="${list1}">
    ${a }<br>
</c:forEach>
<hr>

<!-- 자바영역의 벡터변수를 jstl의 변수로 변환후 출력하기 -->
<c:set var="list2" value="<%=list %>"/>
<c:forEach var="b" items="${list2 }">
    ${b }<br>
</c:forEach>

</body>
</html>


