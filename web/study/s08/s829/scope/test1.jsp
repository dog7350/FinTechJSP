<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        test.jsp<br>
        - scope : 설정 값이 유지되는 범위<br>
            page : 현재 페이지까지만 유지<br>
            request : 현재 페이지 또는 다음 페이지까지 유지
                > 단, 다음 페이지까지 유지시키려면 forward를 이용<br>
            session : 웹 브라우저가 살아있는 동안 유지<br>
            application : 서버가 살아있는 동안 유지<br><br>

        <%
            pageContext.setAttribute("name", "page");
            request.setAttribute("name", "request");
            session.setAttribute("name", "session");
            application.setAttribute("name", "application");

            request.getRequestDispatcher("test2.jsp").forward(request, response); // test2.jsp로 바로 이동 및 Request, Response를 같이 전송
        %>

        page : <%= pageContext.getAttribute("name") %><br>
        request : <%= request.getAttribute("name") %><br>
        session : <%= session.getAttribute("name") %><br>
        application : <%= application.getAttribute("name") %><br>
        <a href="test2.jsp">test2</a>
        <a href="test3.jsp">test3</a>
    </body>
</html>
