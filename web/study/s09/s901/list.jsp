<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        list.jsp<br>
        <jsp:useBean id="dao" class="study.s901.TestDAO" />

        <table border="1">
            <thead>
                <tr>
                    <th>번호(ID)</th> <th>이름(NAME)</th> <th>제목(TITLE)</th> <th>날짜(SAVEDATE)</th>
                    <th>조회수(HIT)</th> <th>그룹번호(IDGROUP)</th> <th>STEP</th> <th>들여쓰기(INDENT)</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="dto" items="${ dao.list() }">
                    <tr>
                        <td>${ dto.id }</td>
                        <td>${ dto.name }</td>
                        <td>
                            <c:forEach begin="1" end="${ dto.indent }" >
                                =>
                            </c:forEach>
                            <a href="content_view.jsp?id=${ dto.id }">
                                    ${ dto.title }
                            </a>
                        </td>
                        <td>${ dto.savedate }</td>
                        <td>${ dto.hit }</td>
                        <td>${ dto.idgroup }</td>
                        <td>${ dto.step }</td>
                        <td>${ dto.indent }</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="8">
                        <a href="write_view.jsp">글 등록</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>