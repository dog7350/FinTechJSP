<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>QUIZ</title>
	</head>
	
	<body>
		<h1>설문조사 폼 만들기</h1>
		<div>
			<form action="views.jsp" method="post">
				이름 : <input type="text" name="name" placeholder="이름"><br>
				소개 : <textarea rows="3" cols="10" name="content"></textarea><br>
				<fieldset>
					<legend>연령 조사</legend>
					<input type="radio" name="age" value="10" />10대 &nbsp;
					<input type="radio" name="age" value="20" />20대 &nbsp;
					<input type="radio" name="age" value="30" />30대 &nbsp;
					<input type="radio" name="age" value="40" />40대
				</fieldset>
				<br>
				<fieldset>
					<legend>취미 조사</legend>
					책읽기<input type="checkbox" name="favorite" value="책읽기"> &nbsp;
					춤추기<input type="checkbox" name="favorite" value="춤추기"> &nbsp;
					멍때리기<input type="checkbox" name="favorite" value="멍때리기"> &nbsp;
				</fieldset>
				<input type="submit" value="전송">
			</form>
		</div>
	</body>
</html>