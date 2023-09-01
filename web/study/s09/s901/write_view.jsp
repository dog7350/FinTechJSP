<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <form action="write_save.jsp" method="post">
            이름 : <input type="text" name="name"><br>
            제목 : <input type="text" name="title"><br>
            내용 : <textarea rows="" cols="" name="content"></textarea>
            <hr>
            <input type="submit" value="등록">
            <input type="button" value="목록이동" onclick="history.back()">
        </form>
    </body>
</html>