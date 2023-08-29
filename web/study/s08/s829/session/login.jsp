<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <% String nick = (String) session.getAttribute("nick");
            if (nick != null) { %>
            <script>
                alert("<%= nick %>님 로그인 상태입니다.");
                location.href="main.jsp";
            </script>
        <% } else { %>
            login.jsp<br>
            <form action="chkUser.jsp" method="post">
                <input type="text" name="id"><br>
                <input type="text" name="pwd"><br>
                <input type="submit" value="로그인">
            </form>
        <% } %>
    </body>
</html>