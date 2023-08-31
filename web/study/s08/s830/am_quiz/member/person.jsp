<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <%@ include file="../default/header.jsp" %>

        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
        <%
            MemberDTO person = dao.loginChk(request.getParameter("id"));
        %>

        <div style="text-align: center;">
            <h1>개인 정보</h1>
            아이디 : <%= person.getId() %><br>
            비밀번호 : <%= person.getPw() %><br>
            이름 : <%= person.getName() %><br>
            주소 : <%= person.getAddr() %>
        </div>

        <input type="button" value="수정" onclick="location.href='modify.jsp?id=<%= person.getId() %>'"><br>
        <input type="button" value="삭제" onclick="location.href='delete.jsp?id=<%= person.getId() %>'">

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>
