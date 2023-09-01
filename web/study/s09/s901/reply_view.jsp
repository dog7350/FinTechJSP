<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <form action="reply.jsp" method="post">
            <input type="text" name="id" value="${ param.id }" readonly><br>
            <input type="text" name="title" value="${ param.title }" placeholder="Input TITLE"><br>
            <input type="text" name="name" value="${ param.name }" placeholder="Input NAME"><br>
            <textarea name="content"></textarea><br>
            <input type="submit" value="답글 작성">
        </form>
    </body>
</html>