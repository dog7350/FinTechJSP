<%@ page import="java.sql.*" %>
<%@ page import="dao.DBConnect" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            String id = request.getParameter("id");

            Connection con = DBConnect.getConnect();
            String sql = "SELECT * FROM student WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
        %>
        <h1>인적 사항</h1>
        <b>학번 : <%= rs.getString("id") %></b><br>
        <b>이름 : <%= rs.getString("name") %></b><br>
        <b>국, 영, 수 : <%= rs.getString("kor") %>, <%= rs.getString("eng") %>, <%= rs.getString("math") %></b>
        <br>
        <input type="button" value="뒤로" onclick="history.back()">
    </body>
</html>
