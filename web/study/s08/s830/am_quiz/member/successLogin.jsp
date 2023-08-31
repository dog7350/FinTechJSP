<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <%@ include file="../default/header.jsp" %>

        <h1>로그인 성공</h1>

        Id : <%= user.getId() %><br>
        Name : <%= user.getName() %><br>
        Addr : <%= user.getPw() %>

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>
