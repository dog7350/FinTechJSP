<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Title</title>
    </head>

    <body>
        jstl01.jsp<br>
        <c:set var="num" value="값 지정" /> <%-- 변수 설정 --%>
        값 : ${ num }
        <hr>
        <c:set var="id" value="abc" />
        <c:if test="${ id == 'abc' }">
            두 값은 같다 : ${id}<br>
        </c:if>
        <hr>
        <%
            String[] arr = {"111", "222", "333"};
        %>
        <c:set var="values" value="<%= arr %>" />
        <c:forEach var="i" begin="10" end="20" step="2"> <%-- i = 10; i <= 20; i += 2 --%>
            ${ i },
        </c:forEach>
        <hr>
        <c:forEach var="item" items="${ values }">
            ${ item },
        </c:forEach>
        <hr>
        <%--
        <c:import url="el01.jsp" />
        <c:redirect url="el02_login.jsp" />
        --%>
        <c:set var="s_name" scope="session" value="세션 설정" />
        <c:remove var="s_name111" scope="session" /> <%-- 변수 만료 --%>
        <a href="jstl02.jsp">jstl02</a>
        <hr>
        <c:set var="nick">
            홍길동
        </c:set>
        <c:choose>
            <c:when test="${ nick == '홍길동' }"> <%-- else if --%>
                이름 : ${nick}
            </c:when>
            <c:when test="${ nick ne '홍길동' }">
                이름 : ${nick}
            </c:when>
            <c:otherwise> <%-- else --%>
                else 구현
            </c:otherwise>
        </c:choose>
        <hr>
        <c:set var="n" value="100" />
        <c:choose>
            <c:when test="${n > 100}">100보다 크다</c:when>
            <c:otherwise>else 구현</c:otherwise>
        </c:choose>
    </body>
</html>
