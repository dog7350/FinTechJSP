<%@ page import="java.sql.*" %>
<%@ page import="dao.DBConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            Connection con = DBConnect.getConnect();

            String sql = "SELECT * FROM student";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
        %>

        <table border="1">
            <thead>
                <tr><th>학번</th> <th>이름</th> <th>국어</th> <th>영어</th> <th>수학</th></tr>
            </thead>

            <tbody>
                <% while (rs.next()) { %>
                    <tr>
                        <td><%= rs.getString("id") %></td>
                        <td><a href="content.jsp?id=<%= rs.getString("id") %>"><%= rs.getString("name") %></a></td>
                        <td><%= rs.getString("kor") %></td>
                        <td><%= rs.getString("eng") %></td>
                        <td><%= rs.getString("math") %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
