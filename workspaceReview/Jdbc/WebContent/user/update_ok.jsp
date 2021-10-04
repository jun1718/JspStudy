<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");

	String url = "jdbc:mysql://localhost:3306/jsp_practice2";
	String uid = "jsp1";
	String upw = "jsp1";
	
	String sql = "UPDATE jsp_practice2.users SET name = '"+name+"', phone1 = '"+phone1+"', phone2 = '"+phone2+"', phone3 = '"+phone3+"', gender = '"+gender+"' WHERE id = '"+session.getAttribute("user_id")+"';";
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		
		int rn = stmt.executeUpdate(sql);
		
		if(rn==1){
			response.sendRedirect("update_success.jsp");
		} else{
			response.sendRedirect("login_form.jsp");			
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			
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

</body>
</html>