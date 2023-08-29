<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <h1>del 페이지</h1>
        <%
            // session.removeAttribute("id"); // 하나의 세션 만료
            // session.setMaxInactiveInterval(5); // 세션의 라이프 사이클 타임 설정
            session.invalidate(); // 모든 세션 만료
        %>
        <hr>
        <a href="set.jsp">set.jsp</a>
        <a href="get.jsp">get.jsp</a>
    </body>
</html>