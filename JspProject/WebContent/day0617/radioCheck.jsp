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
<form action="radioCheckActtion.jsp" method="post">
    <table class="table table-striped" style="width: 50%">
        <tr>
            <td><b>지금계절은?</b> &nbsp; <input type="radio" name="season"
                                            value="spring">spring &nbsp; <input type="radio"
                                                                                name="season" value="summer">summer
                &nbsp; <input
                        type="radio" name="season" value="fall">fall &nbsp; <input
                        type="radio" name="season" value="winter">winter &nbsp;
            </td>
        </tr>

        <tr>
            <td><b>좋아하는 야식은?</b> <input type="checkbox" name="yasik"
                                        value="치맥">치맥 &nbsp; <input type="checkbox" name="yasik"
                                                                    value="족발">족발 &nbsp; <input type="checkbox"
                                                                                                name="yasik"
                                                                                                value="피자">피자 &nbsp;
                <input type="checkbox" name="yasik"
                       value="곱창">곱창 &nbsp;
            </td>
        </tr>
        <tr>
            <td><b>날짜를 선택하세요</b> <input type="date" name="naljja">
            </td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="전송"> <input
                    type="reset" value="초기화"></td>
        </tr>
    </table>
</form>
</body>
</html>