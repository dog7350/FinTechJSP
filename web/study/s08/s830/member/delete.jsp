<%@ page import="study.s830.DAO.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Title</title>
  </head>

  <body>
    <%
        MemberDAO dao = new MemberDAO();
        int result = dao.delete(request.getParameter("id"));

        if (result == 1) { %>
            <script>
                alert("삭제되었습니다.");
                location.href="list.jsp";
            </script>
        <% } %>
  </body>
</html>
