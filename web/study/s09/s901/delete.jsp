<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <jsp:useBean id="dao" class="study.s901.TestDAO" />
        ${ dao.delete(param.id) }

        <% response.sendRedirect("list.jsp"); %>
    </body>
</html>