<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        s_name : ${ sessionScope.s_name }<br>
        s_name : ${ s_name }<br>
        s_name : <%= session.getAttribute("s_name") %>
        <hr>
        <c:if test="${ s_name == null }">
            세션이 없다<br>
        </c:if>
        <c:if test="${ s_name != null }">
            세션이 있다<br>
        </c:if>
    </body>
</html>
