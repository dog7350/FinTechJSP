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
            ArrayList<MemberDTO> list = dao.getList();
        %>

        <table border="1">
            <thead>
                <tr><th>아이디</th> <th>이름</th> <th>주소</th></tr>
            </thead>
            <tbody>
                <% for(MemberDTO d : list) { %>
                    <tr>
                        <td><%= d.getId() %></td>
                        <td>
                            <a href="person.jsp?id=<%= d.getId() %>"><%= d.getName() %></a>
                        </td>
                        <td><%= d.getAddr() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>
