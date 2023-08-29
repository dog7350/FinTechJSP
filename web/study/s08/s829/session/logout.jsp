<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        logout.jsp<br>
        <% session.invalidate(); %>
        <script>
            alert("로그아웃");
            location.href="login.jsp";
        </script>
    </body>
</html>