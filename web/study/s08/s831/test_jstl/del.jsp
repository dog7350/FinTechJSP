<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        del.jsp<br>
        id = ${ param.id }
        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
        <c:set var="result" value="${dao.delete(param.id)}" />
        <hr>
        result : ${ result }
        <c:if test="${ result == 1 }">
            <script>
                alert("삭제 성공");
                location.href="list.jsp";
            </script>
        </c:if>
    </body>
</html>
