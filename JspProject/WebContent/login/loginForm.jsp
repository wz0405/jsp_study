<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<%
String path=request.getContextPath();

String saveok=(String)session.getAttribute("saveok");
String id=(String)session.getAttribute("idok");
%>
<body>
<form action="<%=path%>/login/loginAction.jsp" method="post">
  <table class="table table-bordered" style="width: 300px;">
    <caption><b style="font-size: 15pt;">세션 로그인</b></caption>
       <tr>
         <td colspan="2">
         
         <%
         if(saveok==null)
         {%>
        	 <input type="checkbox" name="savechk">아이디저장
         <%}else
         {%>
        	 <input type="checkbox" name="savechk" checked="checked">아이디저장
         <%}
         %>
           
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <b>보안로그인</b>
         </td>
       </tr>
       
       <tr>
         <th>아이디</th>
         <td>
         
         <%
         if(saveok==null)
         {%>
        	 <input type="text" name="id" size="10" 
           autofocus="autofocus" required="required" value="">
         <%}else
         {%>
        	 <input type="text" name="id" size="10" 
           autofocus="autofocus" required="required" value="<%=id%>">
         <%}
         %>
           
         </td>
       </tr>
       
       <tr>
         <th>비밀번호</th>
           <td>
             <input type="password" name="pass" size="10"
             required="required">
           </td>
       </tr>
       
       <tr>
         <td colspan="2" align="center">
           <input class="btn btn-info" type="submit" value="로그인">
           <input class="btn btn-info" type="button" value="회원가입" 
           onclick="location.href='<%=path%>/index.jsp?body=member/memberForm.jsp'">
         </td>
       </tr>
  </table>
</form>
</body>
</html>
