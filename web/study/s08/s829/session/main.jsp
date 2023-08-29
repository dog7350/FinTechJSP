<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <% String nick = (String) session.getAttribute("nick");
           if (nick != null) { %>
            <%= session.getAttribute("nick") %>님 환영합니다!!<br>
            <a href="login.jsp">로그인</a>
            <a href="logout.jsp">로그아웃</a>
        <% } else { %>
            <script>
                alert("로그인하세요.");
                location.href="login.jsp";
            </script>
        <% } %>
        <hr>
    </body>
</html>