<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="study.s830.DTO.MemberDTO" />
<jsp:setProperty name="dto" property="*" />

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />

${ dao.update(dto) }
<script>
    alert("수정되었습니다.");
    location.href="successLogin.jsp";
</script>