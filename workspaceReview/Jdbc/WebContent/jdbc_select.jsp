<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>    
    
<%
	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";
	
	
	String sql = "select * from member";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			out.print(rs.getString("id") + "&nbsp;"); 
			out.print(rs.getString("pw") + "&nbsp;");
			out.print(rs.getString("name") + "&nbsp;");
			out.print(rs.getString("email") + "<br />");
		}
	}catch (Exception e){
		e.printStackTrace();	
	}finally{
		try{
			conn.close();
			stmt.close();
			rs.close();
		}catch (Exception e){
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

</body>
</html>