<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h2>관리자 로그아웃</h2>
	<hr>
	관리자님 로그아웃을 실행합니다.<br>
	<%
		session.invalidate();
	%>
	<form action="main.jsp">
		<input type="submit" value="메인화면으로 이동">
	</form>
</body>
</html>