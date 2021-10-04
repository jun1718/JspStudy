<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%!
	String name, phone2,phone3,gender;
%>

<%
	String url = "jdbc:mysql://localhost:3306/jsp_practice2";
	String uid = "jsp1";
	String upw = "jsp1";

	String id = (String)session.getAttribute("user_id");
	
	String sql = "SELECT name,phone2,phone3,gender FROM jsp_practice2.users WHERE id = '"+id+"';";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			name = rs.getString("name");
			phone2 = rs.getString("phone2");
			phone3 = rs.getString("phone3");
			gender = rs.getString("gender");
		}		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(conn!=null) conn.close();
			if(stmt!=null) stmt.close();
			if(rs!=null) rs.close();
		}catch(Exception e){
			e.printStackTrace();
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

	<form action="update_ok.jsp" method="post">
		이름: <input type="text" name="name" size="10" value="<%= name %>"><br>
		아이디: <%= id %><br> 
		전화번호: 
		<select name="phone1">
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>019</option>
		</select> 
		- <input type="text" name="phone2" size="5" value="<%= phone2 %>">
		- <input type="text" name="phone3" size="5" value="<%= phone3 %>">
		<br> 성별:
		<%if(gender.equals("여")) {%>
			<input type="radio" name="gender" value="남">남 &nbsp; 
			<input type="radio" name="gender" value="여" checked>여 <br>
		<%} else{ %>
			<input type="radio" name="gender" value="남" checked>남 &nbsp; 
			<input type="radio" name="gender" value="여">여 <br>
		<%}%>
		<input type="submit" value="정보수정">
	</form>
	<a href="login_form.jsp">로그인 페이지로</a>
</body>
</html>

