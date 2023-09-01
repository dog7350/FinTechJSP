<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        <jsp:useBean id="dao" class="study.s901.TestDAO" />
        <c:set var="dto" value="${dao.contentView(param.id)}" />

        <form action="modify.jsp" method="post">
            <table border="1">
                <tbody>
                    <tr>
                        <th>번호</th>
                        <td><input type="text" name="id" value="${ dto.id }" disabled></td>
                    </tr>
                    <tr>
                        <th>조회수</th>
                        <td>${ dto.hit }</td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" name="name" value="${ dto.name }"></td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="title" value="${ dto.title }"></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea rows="" cols="" name="content">${ dto.content }</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="수정"><br>
                            <a href="list.jsp">목록 이동</a><br>
                            <a href="reply_view.jsp?id=${ dto.id }&title=${ dto.title }&name=${ dto.name }">답글</a><br>
                            <a href="delete.jsp?id=${ dto.id }">삭제</a><br>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>