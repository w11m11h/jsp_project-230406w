<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 중복여부 출력</title>
</head>
<body>
	<%
		String cid = request.getParameter("uid");
	
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jspdb";
		String userName = "root";
		String password = "1234";
		
		String sql = "SELECT * FROM members WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, userName, password);
			
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, cid);
			
			rs = pstmt.executeQuery();		
			
			int count = 0;
			
			while(rs.next()) {
						
				count++; // 총회원수
			}
			if(count == 0) {
				out.println(cid + "는 가입 가능한 아이디 입니다.");
			} else {
				out.println(cid + "는 이미 가입된 아이디 입니다.<br>");
				out.println("다른 아이디를 입력하세요.");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
		
	%>
</body>
</html>