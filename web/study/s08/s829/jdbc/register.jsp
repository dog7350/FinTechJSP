<%@ page import="java.sql.*" %>
<%@ page import="dao.DBConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            request.setCharacterEncoding("UTF-8");

            Connection con = DBConnect.getConnect();
            String sql = "INSERT INTO members02(id, pwd, name, addr) VALUES(?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, request.getParameter("id"));
            ps.setString(2, request.getParameter("pwd"));
            ps.setString(3, request.getParameter("name"));
            ps.setString(4, request.getParameter("addr"));

            int result = ps.executeUpdate();
            response.sendRedirect("select.jsp");
        %>
    </body>
</html>
