<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        page : <%= pageContext.getAttribute("name") %><br>
        request : <%= request.getAttribute("name") %><br>
        session : <%= session.getAttribute("name") %><br>
        application : <%= application.getAttribute("name") %><br>
        <a href="test2.jsp">test2</a>
        <a href="test3.jsp">test3</a>
    </body>
</html>
