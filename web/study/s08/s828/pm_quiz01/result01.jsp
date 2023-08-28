<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RESULT</title>
	</head>
	
	<body>
		<h1>설문 조사 결과</h1>
		<% request.setCharacterEncoding("UTF-8"); %>
		
		이름 : <%= request.getParameter("name") %><br>
		소개 : <%= request.getParameter("content") %><br>
		나이 : <%= request.getParameter("age") %><br>
		취미 : 
		<%
			String[] s = request.getParameterValues("favorite");
			for(int i = 0; i < s.length; i++) {
		%>
		<%= s[i] %>
		<% } %>
		
		<% for(String data : s) { %>
			<%= data %>	
		<% } %>
	</body>
</html>