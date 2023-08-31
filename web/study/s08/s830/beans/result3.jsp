<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        result3.jsp<br>
        <jsp:useBean id="dto" class="study.s830.DTO.MemberDTO" />
        <jsp:setProperty name="dto" property="*" />

        ID : <%= dto.getId() %>
        PW : <%= dto.getPw() %>
        NAME : <%= dto.getName() %>
    </body>
</html>
