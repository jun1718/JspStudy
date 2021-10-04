<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>	
	

<%
	String url = "jdbc:mysql://localhost:3306/jsp_practice2";
	String uid = "jsp1";
	String upw = "jsp1";

	String id = (String)session.getAttribute("user_id");
	
	Connection conn = null;
	Statement stmt = null;

	String sql = "DELETE FROM jsp_practice2.users WHERE id = '" + id + "'";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();

		int resultNum = stmt.executeUpdate(sql);

		if (resultNum == 1) {
			session.invalidate();
			response.sendRedirect("login_form.jsp");
			
		} else {
			response.sendRedirect("login_welcome.jsp");
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			conn.close();
			stmt.close();

		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>