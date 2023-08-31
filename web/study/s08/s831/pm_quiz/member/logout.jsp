<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:remove var="${sessionScope.user}" />

<script>
    alert("로그아웃");
    location.href="login.jsp";
</script>