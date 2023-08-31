<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

<% dao.delete(request.getParameter("id")); %>
<script>
    alert("삭제되었습니다.");
    location.href="index.jsp";
</script>