<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<% MemberDTO user = (MemberDTO) session.getAttribute("user"); %>

<div id="titleDiv">CARE LAB</div>
<hr>
<div id="headerContainer">
    <nav>
        <a href="">HOME</a>
        <% if (user == null) { %>
            <a href="login.jsp">로그인</a>
        <% } else { %>
            <a href="memberInfo.jsp">회원 정보</a>
            <a href="logout.jsp">로그아웃</a>
        <% } %>
    </nav>
</div>
<hr>