<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="study.s830.DTO.MemberDTO" />
<jsp:setProperty name="dto" property="*" />

<jsp:useBean id="dao" class="study.s830.DAO.MemberDAO" />
${ dao.insert(dto) }
<script>
    alert("회원가입 완료");
    location.href="index.jsp";
</script>