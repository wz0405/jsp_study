<%@page import="sinsang.model.SinsangDTO"%>
<%@page import="sinsang.model.SinsangDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="../jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
   function goFocus(hp) {
	if(hp.value.length==4)
		frm.hp3.focus();
}
</script>
</head>
<body>
<%
String num=request.getParameter("num");

SinsangDAO dao=new SinsangDAO();
SinsangDTO dto=dao.getData(num);

%>

<form action="ssUpdateAction.jsp" method="post" name="frm">

   <table class="table table-bordered" style="width: 40%">
      <caption>신상정보</caption>
      <tr>
         <th>이름</th>
         <td><input type="text" name="name" size="8"
         value="<%=dto.getName() %>">
         </td>
      </tr>
      <tr>
         <th>혈액형</th>
         <td>
            <select size="1" name="blood">
            
            <%
            String []str={"A","B","O","AB"};
            
            for(int i=0; i<str.length; i++)
            {
               if(dto.getBlood().equalsIgnoreCase(str[i]))
                     {%>
                        <option value="<%=str[i]%>" selected="selected"><%=str[i]%>형
                        </option>
                        
                     <%}else
                     {%>
                        <option value="<%=str[i]%>"><%=str[i]%>형
                        </option>
                     <%}
            }
            
            %>      
            </select>
         </td>
      </tr>
      <tr>
         <th>핸드폰</th>
         <td>
            <select size="1" name="hp1">
               <option value="010">010</option>
               <option value="011">011</option>
               <option value="017">017</option>
               <option value="031">031</option>            
            </select>
            <b>-</b>
            <input type="text" name="hp2" size="3"
            required="required" onkeyup="goFocus(this)">
            <b>-</b>
            <input type="text" name="hp3" size="3"
            required="required">
         </td>      
      </tr>
      <tr>
         <th>생년월일</th>
         <td>
            <input type="date" name="birth"
            required="required">
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
            <input type="submit" value="db저장">
            <input type="button" value="목록"
            onclick="location.href='sinsangList.jsp'">
         </td>
      </tr>
   </table>
   
</form>

</body>
</html>