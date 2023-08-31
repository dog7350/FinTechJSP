<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <%@ include file="test1.jsp" %>
        <hr>

        test2.jsp<br>
        <h3>내용 입니다.</h3>
        test1 : <%= msg %><br>

        <hr>
        <jsp:include page="test3.jsp"></jsp:include>
        test3 : <%= m %><br>
    </body>
</html>
