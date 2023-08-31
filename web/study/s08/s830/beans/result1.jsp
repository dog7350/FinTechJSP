<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");

            MemberDTO dto = new MemberDTO();
            dto.setId(id);
            dto.setPw(pw);
        %>

        ID : <%= id %><br>
        PW : <%= pw %><br>
    </body>
</html>
