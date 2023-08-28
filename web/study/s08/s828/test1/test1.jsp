<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%@ include file="../include/header.jsp" %>
		<h1>TEST2 페이지</h1>
		<a href='<%= request.getContextPath() %>/main.jsp'>Main</a><br>
		<a href='<%= request.getContextPath() %>/test1/test2/test2.jsp'>TEST2</a>
	</body>
</html>