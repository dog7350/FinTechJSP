<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%
            int cnt = Integer.parseInt(application.getAttribute("cnt").toString());
            application.setAttribute("cnt", cnt + 1);
        %>
        <h1>게시글 입니다</h1>
        <h3>공지사항 입니다</h3>
        jsp application을 이용한<br>
        조회수 올리기 문제입니다.<br>
        <a href="list.jsp">돌아가기</a>
    </body>
</html>
