<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        write_save.jsp<br>
        <% request.setCharacterEncoding("UTF-8"); %>

        <jsp:useBean id="dao" class="study.s901.TestDAO" />

        <jsp:useBean id="dto" class="study.s901.TestDTO" />
        <jsp:setProperty name="dto" property="*" />

        <c:choose>
            <c:when test="${ dao.writeSave(dto) == 1 }">
                <script>
                    alert("등록 성공");
                    location.href="list.jsp";
                </script>
            </c:when>

            <c:otherwise>
                <script>
                    alert("문제 발생");
                    history.back();
                </script>
            </c:otherwise>
        </c:choose>
    </body>
</html>