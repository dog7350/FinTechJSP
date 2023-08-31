<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
    #titleDiv {
        width: 100%;
        font-family: 'HY엽서L';
        font-size: 30pt;
        font-weight: bold;
        color: gold;
        text-align: center;
    }
    #headerContainer {
        width: 100%;
    }
    nav {
        width: 100%;
        text-align: right;
    }
    a {
        margin-left: 30px;
    }
</style>

<div id="titleDiv">CARE LAB</div>
<hr>
<div id="headerContainer">
    <c:set var="user" value="${ sessionScope.user }" />

    <nav>
        <a href="../jstl_index.jsp">HOME</a>
        <c:choose>
            <c:when test="${ user == null }">
                <a href="member/login.jsp">로그인</a>
            </c:when>
            <c:otherwise>
                <a href="memberInfo.jsp">회원 정보</a>
                <a href="logout.jsp">로그아웃</a>
            </c:otherwise>
        </c:choose>
    </nav>
</div>
<hr>