<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        list.jsp<br>
        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

        <table border="1">
            <thead>
                <tr><th>id</th> <th>name</th> <th>addr</th></tr>
            </thead>

            <tbody>
                <%-- <c:set var="list" value="${ dao.getList() }" /> --%>
                <c:forEach var="dto" items="${ dao.getList() }">
                    <tr>
                        <td>${ dto.getId() }</td>
                        <td>
                            <a href="del.jsp?id=${ dto.id }">
                                    ${ dto.name }
                            </a>
                        </td>
                        <td>${ dto.addr }</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>