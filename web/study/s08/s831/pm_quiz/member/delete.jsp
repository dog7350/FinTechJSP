<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

${ dao.delete(param.id) }
<script>
    alert("삭제되었습니다.");
    location.href="../jstl_index.jsp";
</script>