<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <h3>RESULT</h3>
        name : ${name}<br>
        page : ${pageScope.name}<br>
        request : ${requestScope.name} = <%= request.getAttribute("name") %><br>
        session : ${sessionScope.name}<br>
        application : ${applicationScope.name}<br>
    </body>
</html>
