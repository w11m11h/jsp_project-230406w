<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<form action="loginSuccess.jsp" method="post">
		아이디 : <input type="text" name="uID"><br><br>
		비밀번호 : <input type="password" name="uPW"><br><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>
