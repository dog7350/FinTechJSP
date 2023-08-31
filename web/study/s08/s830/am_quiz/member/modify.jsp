<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
<% MemberDTO person = dao.loginChk(request.getParameter("id")); %>

<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <%@ include file="../default/header.jsp" %>

        <form action="update.jsp" method="post">
            <input type="text" name="id" placeholder="Input ID" value="<%= person.getId() %>" readonly><br>
            <input type="password" name="pw" placeholder="Input PW" value="<%= person.getPw() %>"><br>
            <input type="text" name="name" placeholder="Input NAME" value="<%= person.getName() %>"><br>
            <input type="text" name="addr" placeholder="Input ADDR" value="<%= person.getAddr()%>"><br>
            <input type="submit" value="수정">
        </form>

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>
