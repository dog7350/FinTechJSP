<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<% request.setCharacterEncoding("UTF-8"); %>
		<h1>Post JSP</h1>
		id : <%= request.getParameter("id") %><br>
		
		<% String id = request.getParameter("id"); %>
		<%= id %><br>
		
		<a href="main.jsp">Main이동</a>
	</body>
</html>