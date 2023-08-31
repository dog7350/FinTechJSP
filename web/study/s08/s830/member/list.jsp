<%@ page import="java.util.*" %>
<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
        <%
            ArrayList<MemberDTO> list = dao.getList();
        %>
        size : <%= list.size() %><br>
        <hr>
        <table border="1">
            <thead>
                <tr><th>ID</th> <th>NAME</th> <th>ADDR</th></tr>
            </thead>
            <tbody>
                <% for (MemberDTO d : list) { %>
                    <tr>
                        <td><%= d.getId() %></td>
                        <td>
                            <a href="delete.jsp?id=<%= d.getId()%>">
                                <%= d.getName() %>
                            </a>
                        </td>
                        <td><%= d.getAddr() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
