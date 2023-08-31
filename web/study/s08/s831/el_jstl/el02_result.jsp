<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        id : <%= request.getParameter("id") %><br>
        id : ${ param.id }<br>
        id : ${ param["id"] }
    </body>
</html>
