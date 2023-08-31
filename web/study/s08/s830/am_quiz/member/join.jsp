<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <%@ include file="../default/header.jsp" %>

        <form action="insert.jsp" method="post">
            <input type="text" name="id" placeholder="Input ID"><br>
            <input type="password" name="pw" placeholder="Input PW"><br>
            <input type="text" name="name" placeholder="Input NAME"><br>
            <input type="text" name="addr" placeholder="Input ADDR"><br>
            <input type="submit" value="회원가입">
        </form>

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>
