<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <h2>get session</h2>
        id : <%= session.getAttribute("id") %><br>
        <% String name = (String) session.getAttribute("name"); %>

        name : <%= name %><br>
        <a href="set.jsp">set 이동</a>
        <a href="del.jsp">del 이동</a>
    </body>
</html>