<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <jsp:useBean id="dto" class="study.s830.DTO.MemberDTO" />
        MemberDTO dto = new MemberDTO();<br>
        <jsp:setProperty name="dto" property="id" />
        dto.setId(request.getParameter("id"));<br>
        <jsp:setProperty name="dto" property="pw" />
        dto.setPw(request.getParameter("pw"));<br><br>

        ID : <jsp:getProperty name="dto" property="id" /><br>
        PW : <jsp:getProperty name="dto" property="pw" /><br>
        <hr>
        ID : <%= dto.getId() %><br>
        PW : <%= dto.getPw() %>
    </body>
</html>
