<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            Cookie c = new Cookie("popupClose", "true");
            c.setMaxAge(60 * 60 * 24);
            c.setPath("/");
            response.addCookie(c);
        %>
        <script>
            window.close();
        </script>
    </body>
</html>