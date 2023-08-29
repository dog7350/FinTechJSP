<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <% if (application.getAttribute("cnt") == null) application.setAttribute("cnt", 0); %>
        <table>
            <thead>
                <tr>
                    <th>제목</th>
                    <th>조회수</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><a href="content.jsp">안녕하세요.</a></td>
                    <td><%= application.getAttribute("cnt") %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
