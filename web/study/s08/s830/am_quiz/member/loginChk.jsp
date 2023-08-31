<%@ page import="study.s830.DTO.MemberDTO" %>
<%@ page import="study.s830.DAO.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    MemberDTO tmp = dao.loginChk(id);

    if (tmp.getId() == null) { %>
        <script>
            alert("등록되지 않은 아이디입니다.");
            location.href="login.jsp";
        </script>
    <% } else { %>
        <% if (tmp.getPw().equals(pw)) { %>
            <script>
                alert("로그인");
                <% session.setAttribute("user", tmp); %>
                location.href="successLogin.jsp";
            </script>
        <% } else { %>
            <script>
                alert("비밀번호가 일치하지 않습니다.");
                location.href="login.jsp";
            </script>
        <% } %>
    <% } %>