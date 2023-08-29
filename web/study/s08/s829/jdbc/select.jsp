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
            System.out.println(con);

            String sql = "SELECT * FROM members02";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) { %>
                id : <%= rs.getString("id") %><br>
                pwd : <%= rs.getString("pwd") %><br>
                name : <%= rs.getString("name") %><br>
                addr : <%= rs.getString("addr") %><br><br>
        <% } %>

        <a href="insert.jsp">데이터 추가</a>
    </body>
</html>
