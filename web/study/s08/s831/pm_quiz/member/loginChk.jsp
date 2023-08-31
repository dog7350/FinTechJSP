<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page import="study.s830.DAO.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

<c:set var="tmp" value="${dao.loginChk(param.id)}" />

<c:choose>
    <c:when test="${tmp.id == null}">
        <script>
            alert("등록되지 않은 아이디입니다.");
            location.href="login.jsp";
        </script>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${ tmp.pw == param.pw }">
                <script>
                    alert("로그인");
                    <c:set var="user" scope="session" value="${tmp}" />
                    location.href="successLogin.jsp";
                </script>
            </c:when>
            <c:otherwise>
                <script>
                    alert("비밀번호가 일치하지 않습니다.");
                    location.href="login.jsp";
                </script>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>