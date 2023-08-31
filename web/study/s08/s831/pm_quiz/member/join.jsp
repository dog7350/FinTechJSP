<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <form action="insert.jsp" method="post">
            <input type="text" name="id" placeholder="Input ID"><br>
            <input type="password" name="pw" placeholder="Input PW"><br>
            <input type="text" name="name" placeholder="Input NAME"><br>
            <input type="text" name="addr" placeholder="Input ADDR"><br>
            <input type="submit" value="회원가입">
        </form>

        <c:import url="../default/footer.jsp" />
    </body>
</html>
