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
<form action="quizCheckActtion.jsp" method="post">
    <table>

        <caption>Radio&Check</caption>
        <tr height="30">
            <td><b>최종학력을 선택하세요</b> <!-- radio는 name이 동일해야함 --> <input
                    type="radio" name="grade" value="고등학교"> 고등학교&nbsp; <input
                    type="radio" name="grade" value="전문대학"> 전문대학&nbsp; <input
                    type="radio" name="grade" value="대학"> 대학&nbsp; <input
                    type="radio" name="grade" value="대학원"> 대학원&nbsp; <span
                    id="gra"></span></td>
        </tr>
        <tr>
            <td><b>본인이 가능한 컴퓨터 언어는?</b> <input type="checkbox" name="Lang"
                                               value="C언어"> C언어&nbsp; <input type="checkbox" name="Lang"
                                                                             value="java"> java&nbsp; <input
                    type="checkbox" name="Lang"
                    value="php"> php&nbsp; <input type="checkbox" name="Lang"
                                                  value="spring"> spring&nbsp; <span id="lan"></span></td>
        </tr>
        <tr>
            <td><b>우리반에서 가장 좋은 사람?</b> <select onchange="gosel(this.value)" name="person">
                <option value="수빈">수빈</option>
                <option value="용찬">용찬</option>
                <option value="종민">종민</option>
                <option value="용선">용선</option>
                <option value="지수">지수</option>

            </select> <span id="sel"></span></td>
        </tr>
        <tr>
            <td><b>당신의 키는 몇cm입니까?</b> <input type="number" name="height"
                                             min="150" max="230" step="2" value="150"
                                             onchange="goHeight(this.value)"> cm <span id="hei"></span>
            </td>
        </tr>
        <tr>
            <td><b>당신의 몸무게는 몇 kg입니까?</b> <input type="number" name="weight"
                                                min="20" max="200" step="2" value="50"
                                                onchange="goWeight(this.value)"> <span id="wei"></span> kg
            </td>
        </tr>
        <tr>
            <td><b>날짜선택</b> <input type="date" name="nal"
                                   onchange="goDate(this.value)"> <span id="out2"></span></td>
        </tr>
        <tr>

            <td colspan="2" align="center"><input type="submit" value="전송">
                <input type="reset" value="초기화"></td>
        </tr>
    </table>
</form>
</body>
</html>