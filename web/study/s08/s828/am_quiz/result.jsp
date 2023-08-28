<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RESULT</title>
	</head>
	
	<body>
		<% request.setCharacterEncoding("UTF-8"); %>
		입력하신 수는 <b><%= request.getParameter("num") %></b>이고,
		당신은 <b><%= request.getParameter("gender") %>자다잉</b> 이군요
	</body>
</html>