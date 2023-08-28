<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>Get 방식</h1>
		<form action="get.jsp" method="get">
			<input type="text" name="id"><br>
			<input type="submit" value="전송">
		</form>
		<hr>
		<h1>Post 방식</h1>
		<form action="post.jsp" method="post">
			<input type="text" name="id"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>