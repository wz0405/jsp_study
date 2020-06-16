<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!//선언만 가능 
	int num = 10;
	String str = "jsp";
	ArrayList<String> list = new ArrayList<String>();

	public void jspMethod() {
		System.out.println("hi");
	}%>
	<!-- 스크립트 태 -->
	<%
		if (num > 0) {
	%>
	<p>num >0</p>
	<%
		} else {
	%>
	<p>num=<0</p>
	<%
		}
	%>
	<!-- 표현식 태그  -->
	num is<%=num%>
</body>
</html>