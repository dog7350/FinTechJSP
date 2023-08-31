<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% session.invalidate(); %>
<script>
    alert("로그아웃");
    location.href="login.jsp";
</script>