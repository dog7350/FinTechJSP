<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
        <c:set var="list" value="${dao.getList()}" />

        <table border="1">
            <thead>
                <tr><th>아이디</th> <th>이름</th> <th>주소</th></tr>
            </thead>
            <tbody>
                <c:forEach var="d" items="${list}">
                    <tr>
                        <td>${d.id}</td>
                        <td>
                            <a href="person.jsp?id=${d.id}">
                                ${d.name}
                            </a>
                        </td>
                        <td>${d.addr}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <c:import url="../default/footer.jsp" />
    </body>
</html>
