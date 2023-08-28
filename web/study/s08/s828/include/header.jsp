<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>header.jsp</h1>
		<header>
			<a href="<%= request.getContextPath() %>/include/main.jsp">Home</a>
			<a href="<%= request.getContextPath() %>/test1/test1.jsp">TEST1</a>
			<a href="<%= request.getContextPath() %>/test1/test2/test2.jsp">TEST2</a>
			<a href="<%= request.getContextPath() %>/main.jsp">밖에있는 main.jsp</a>
		</header>
		<hr>
	</body>
</html>