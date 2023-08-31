<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>CARE LAB</title>
        <style>
            * {
                text-align: center;
            }
            form {
                display: flex;
                margin: auto;
                width: 300px;
            }
            form > input {
                width: 100%;
                height: 100%;
            }
        </style>
    </head>

    <body>
        <c:import url="../default/header.jsp" />

        <h1>로그인 페이지</h1>
        <form action="loginChk.jsp" method="post">
            <div>
                <input type="text" name="id" placeholder="Input ID">
                <input type="password" name="pw" placeholder="Input PW">
            </div>
            <input type="submit" value="로그인">
        </form>
        <a href="join.jsp">회원가입</a>

        <c:import url="../default/footer.jsp" />
    </body>
</html>