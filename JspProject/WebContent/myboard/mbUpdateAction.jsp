<%@page import="myboard.model.MyBoradDAO" %>
<%@page import="myboard.model.MyBoradDTO" %>
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
<%
    //1.파라메타 값 받기(엔코딩)
    request.setCharacterEncoding("utf-8");
    String num = request.getParameter("num");
    String name = request.getParameter("name");
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");

    //2. 입력데이타를 dto로 묶어서
    MyBoradDTO dto = new MyBoradDTO();
    dto.setNum(num);
    dto.setName(name);
    dto.setSubject(subject);
    dto.setContent(content);
    //3. 메소드로 전달
    MyBoradDAO dao = new MyBoradDAO();
    dao.myBoardUpdate(dto);
    //4. 출력jsp로 이동..url로 바뀜
    response.sendRedirect("mbList.jsp");
%>
</body>
</html>