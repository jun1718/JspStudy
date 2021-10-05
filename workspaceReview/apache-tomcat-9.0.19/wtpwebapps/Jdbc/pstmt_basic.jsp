<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
    
<%
	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "INSERT INTO member VALUES(?, ?, ?, ?)";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "chicken1234");
		pstmt.setString(2, "ccc1234");
		pstmt.setString(3, "닭튀김");
		pstmt.setString(4, "chicken1234@naver.com");
		
		pstmt.executeUpdate();
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			conn.close();
			pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>    
    