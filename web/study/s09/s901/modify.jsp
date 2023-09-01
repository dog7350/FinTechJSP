<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <% request.setCharacterEncoding("UTF-8"); %>

        <jsp:useBean id="dao" class="study.s901.TestDAO" />

        <jsp:useBean id="dto" class="study.s901.TestDTO" />
        <jsp:setProperty name="dto" property="*" />
        ${ dao.modify(dto) }

        <% response.sendRedirect("content_view.jsp?id=" + dto.getId()); %>
    </body>
</html>