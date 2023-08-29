<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            boolean flag = false;
            Cookie[] cArr = request.getCookies();

            for (Cookie c : cArr) {
                if (c.getName().equals("popupClose")) {
                    flag = true;
                    break;
                }
            }
        %>
        <h1>메인 페이지</h1>

        <% if (!flag) { %>
            <script>
                window.open("popup.jsp", "", "width=300, height=300, top=300, left=300");
            </script>
        <% } %>
    </body>
</html>