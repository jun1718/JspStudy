<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*" %>    
    
<%
/*
 * 1. 폼태그에서 넘어온 데이터들(파라미터)를 각각 변수에 저장.
 * 2. 해당 데이터를 sql문을 통해 DB에 전송.
 * 3. 전송이 완료됐을시 executeUpdate()가
 *   1을 리턴하면 세션에 변경된 이름을 저장한 후
 *   update_success.jsp로 리다이렉트,
 *   0을 리턴하면 login_form.jsp로 리다이렉트.
*/
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("user_id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");


	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";
	
	Connection conn = null;
	Statement stmt = null;
	
	String sql = "UPDATE jsp_practice.users SET " + 
				 "name = '"+name+"',"+
				 "phone1 = '"+phone1+"',"+
				 "phone2 = '"+phone2+"',"+
				 "phone3 = '"+phone3+"',"+
				 "gender = '"+gender+"' "+
				 "WHERE id = '"+id+"'";
	
	System.out.println(sql);
	

	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		int rn = stmt.executeUpdate(sql);
		
		if(rn ==1){
			response.sendRedirect("update_success.jsp");
		} else{
			response.sendRedirect("login_form.jsp");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {

		try {
			conn.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
%>    
