<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
    
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	
	String url = "jdbc:mysql://localhost:3306/jsp_practice2";
	String uid = "jsp1";
	String upw = "jsp1";
	
	String sql = "INSERT INTO jsp_practice2.users "
			+"VALUES ('"+name+"', '"+id+"', '"+pw+"', '"+phone1+"', '"+phone2+"', '"+phone3+"', '"+gender+"')";
	
	System.out.println(sql);
	
	Connection conn = null;
	Statement stmt = null;
	out.print("hi1");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		
		out.print("hi2");
		int rn = stmt.executeUpdate(sql);
		out.print("hi3");
		out.print(rn);
		if(rn==1){
			response.sendRedirect("join_success.jsp");
		} else{
			response.sendRedirect("join_form.jsp");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			conn.close();
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
%>    
    