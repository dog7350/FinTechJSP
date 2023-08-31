<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <h1>로그인 성공</h1>

        Id : ${user.id}<br>
        Name : ${user.name}<br>
        Addr : ${user.pw}

        <c:import url="../default/footer.jsp" />
    </body>
</html>
