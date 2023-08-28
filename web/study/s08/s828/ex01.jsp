<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Test</title>
	</head>
	
	<body>
		<%-- 주석 --%>
		<%
			int num = 1000;
			System.out.println("num : " + num);
			out.print("num => " + num);
			String msg = "HI";
		%>
		<br>
		<h1><%= msg %></h1>
		<h3><% out.print(msg); %></h3>
		<h1>==============================</h1>
		<%
			int n1 = 10;
			int n2 = 20;	
		%>
		10 + 20 = <%= n1 + n2 %>
		<br>
		10 + 20 = <% out.print(n1 + n2); %>
	</body>
</html>