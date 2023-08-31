<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
<c:set var="person" value="${dao.loginChk(param.id)}" />

<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <form action="update.jsp" method="post">
            <input type="text" name="id" placeholder="Input ID" value="${person.id}" readonly><br>
            <input type="password" name="pw" placeholder="Input PW" value="${person.pw}"><br>
            <input type="text" name="name" placeholder="Input NAME" value="${person.name}"><br>
            <input type="text" name="addr" placeholder="Input ADDR" value="${person.addr}"><br>
            <input type="submit" value="수정">
        </form>

        <c:import url="../default/footer.jsp" />
    </body>
</html>
