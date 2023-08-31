<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>CARE LAB</title>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
        <c:set var="person" value="${ dao.loginChk(param.id) }" />

        <div style="text-align: center;">
            <h1>개인 정보</h1>
            아이디 : ${ person.id }<br>
            비밀번호 : ${ person.pw }<br>
            이름 : ${ person.name }<br>
            주소 : ${ person.addr}
        </div>

        <input type="button" value="수정" onclick="location.href='modify.jsp?id=${person.id}'"><br>
        <input type="button" value="삭제" onclick="location.href='delete.jsp?id=${person.id}'">

        <c:import url="../default/footer.jsp" />
    </body>
</html>
