<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        el03_scope.jsp<br>
        <%
            pageContext.setAttribute("name", "page");
            request.setAttribute("name", "request");
            session.setAttribute("name", "session");
            application.setAttribute("name", "application");
        %>

        name : ${name}<br>
        page : ${pageScope.name}<br>
        request : ${requestScope.name} = <%= request.getAttribute("name") %><br>
        session : ${sessionScope.name}<br>
        application : ${applicationScope.name}<br>
        <a href="el03_result.jsp">result</a>
    </body>
</html>
