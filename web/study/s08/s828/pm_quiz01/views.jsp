<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>설문 조사 결과</h1>
		<%
			request.setCharacterEncoding("UTF-8");
			Enumeration params = request.getParameterNames();
			while( params.hasMoreElements() ) {
				String s = params.nextElement().toString();
				switch (s) {
					case "name" :
						out.print("이름 : ");
						break;
					case "content" :
						out.print("소개 : ");
						break;
					case "age" :
						out.print("나이 : ");
						break;
				}
				out.print(request.getParameter(s) + "<br>");
			}
		%>
	</body>
</html>