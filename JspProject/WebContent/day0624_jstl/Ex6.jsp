<%@page import="java.util.ArrayList" %>
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
<h2>jstl에서 반복문 foreach</h2>
<hr>
<h4>1부터 10까지 출력하기</h4>
<c:forEach var="n" begin="1" end="10" step="1">
    <!-- step="1"은 생략가능 -->
    ${n }&nbsp;&nbsp;&nbsp;
</c:forEach>

<h4>1부터 100까지 5씩증가하면서출력하기</h4>
<c:forEach var="n" begin="1" end="100" step="5">

    ${n }&nbsp;&nbsp;&nbsp;
</c:forEach>
<h4>자바 배열 선언후 리퀘스트로 저장한후 출력</h4>
<%
    List<String> list = new ArrayList<String>();

    String[] str = {"red", "yellow", "magenta", "cyan", "gray", "pink"};

    for (String s : str)
        list.add(s);
    //리퀘스트에 저장
    request.setAttribute("list1", list);
%>
<hr>
<h2>List컬렉션 전체 출력하기</h2>
<c:forEach var="s" items="${list1 }" varStatus="a">
    ${a.count }/${a.index }: <b style="color: ${s};">${s}</b><br>
</c:forEach>

<hr>
<h2>list부분 출력도 가능</h2>
<c:forEach var="s" begin="2" end="5" items="${list1 }"
           varStatus="a">
    ${a.count }/${a.index }:<b style="color: ${s}">${s}</b><br>
</c:forEach>


</body>
</html>
