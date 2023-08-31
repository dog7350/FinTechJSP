<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CARE LAB</title>
        <style>
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
        <%@ include file="../default/header.jsp" %>

        <h1>로그인 페이지</h1>
        <form action="loginChk.jsp" method="post">
            <div>
                <input type="text" name="id" placeholder="Input ID">
                <input type="password" name="pw" placeholder="Input PW">
            </div>
            <input type="submit" value="로그인">
        </form>
        <a href="join.jsp">회원가입</a>

        <%@ include file="../default/footer.jsp" %>
    </body>
</html>