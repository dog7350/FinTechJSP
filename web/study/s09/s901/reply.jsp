<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <% request.setCharacterEncoding("UTF-8"); %>

        <jsp:useBean id="dao" class="study.s901.TestDAO" />

        <jsp:useBean id="dto" class="study.s901.TestDTO" />
        <jsp:setProperty name="dto" property="*" />

        ${ dao.reply(dto) }
        <% response.sendRedirect("list.jsp"); %>
    </body>
</html>